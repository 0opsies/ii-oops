#!/usr/bin/env bash

set -u

STATE_DIR="${XDG_RUNTIME_DIR:-/tmp}/hypr_workspace_layouts"
mkdir -p "$STATE_DIR"

DEFAULT_LAYOUT_FILE="${STATE_DIR}/default_layout"

read_default_layout() {
    if [ -f "$DEFAULT_LAYOUT_FILE" ]; then
        cat "$DEFAULT_LAYOUT_FILE"
    else
        hyprctl getoption general:layout -j 2>/dev/null | jq -r '.str // "dwindle"'
    fi
}

ensure_default_layout() {
    if [ ! -f "$DEFAULT_LAYOUT_FILE" ]; then
        read_default_layout > "$DEFAULT_LAYOUT_FILE"
    fi
}

get_workspace_layout_file() {
    local workspace_id="$1"
    printf '%s/ws_%s\n' "$STATE_DIR" "$workspace_id"
}

read_workspace_layout() {
    local workspace_id="$1"
    local file
    file="$(get_workspace_layout_file "$workspace_id")"

    if [ -f "$file" ]; then
        cat "$file"
    else
        read_default_layout
    fi
}

write_workspace_layout() {
    local workspace_id="$1"
    local layout="$2"
    printf '%s\n' "$layout" > "$(get_workspace_layout_file "$workspace_id")"
}

next_layout() {
    case "$1" in
        dwindle)
            printf '%s\n' "master"
            ;;
        master)
            printf '%s\n' "scrolling"
            ;;
        scrolling)
            printf '%s\n' "dwindle"
            ;;
        *)
            printf '%s\n' "dwindle"
            ;;
    esac
}

apply_layout() {
    local layout="$1"
    [ -n "$layout" ] || return 0
    hyprctl --quiet eval "hl.config({ general = { layout = \"${layout}\" } })" 2>/dev/null || true
}

cycle_layout() {
    ensure_default_layout

    local current_workspace
    current_workspace=$(hyprctl activeworkspace -j 2>/dev/null | jq -r '.id // empty')
    [ -n "$current_workspace" ] || return 0

    local current_layout
    current_layout=$(read_workspace_layout "$current_workspace")

    local new_layout
    new_layout=$(next_layout "$current_layout")

    write_workspace_layout "$current_workspace" "$new_layout"
    apply_layout "$new_layout"

    if command -v notify-send >/dev/null 2>&1; then
        notify-send "Hyprland Layout" "Workspace ${current_workspace} -> ${new_layout}" -i emblem-system -a "Hyprland" -t 2000
    fi
}

apply_saved_layout_for_workspace() {
    local workspace_id="$1"
    local target_layout
    target_layout=$(read_workspace_layout "$workspace_id")

    if [ -n "$target_layout" ]; then
        local current_global_layout
        current_global_layout=$(hyprctl getoption general:layout -j 2>/dev/null | jq -r '.str // empty')
        if [ "$current_global_layout" != "$target_layout" ]; then
            apply_layout "$target_layout"
        fi
    fi
}

run_daemon() {
    pkill -f "cycle_layout.sh --daemon" 2>/dev/null || true

    local socket_path=""
    for _ in $(seq 1 30); do
        if [ -n "${HYPRLAND_INSTANCE_SIGNATURE:-}" ]; then
            socket_path="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}/hypr/${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock"
        else
            local latest_sig
            latest_sig=$(ls -1 "${XDG_RUNTIME_DIR:-/run/user/$(id -u)}/hypr" 2>/dev/null | tail -n 1)
            socket_path="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}/hypr/${latest_sig}/.socket2.sock"
        fi

        [ -S "$socket_path" ] && break
        socket_path=""
        sleep 0.2
    done

    [ -S "$socket_path" ] || exit 0

    local active_ws
    active_ws=$(hyprctl activeworkspace -j 2>/dev/null | jq -r '.id // empty')
    if [ -n "$active_ws" ]; then
        apply_saved_layout_for_workspace "$active_ws"
    fi

    socat -u UNIX-CONNECT:"$socket_path" - | while IFS= read -r line; do
        local ws_id=""
        if [[ "$line" =~ ^workspace\>\>(.*)$ ]]; then
            ws_id="${BASH_REMATCH[1]}"
        elif [[ "$line" =~ ^workspacev2\>\>([0-9]+),.*$ ]]; then
            ws_id="${BASH_REMATCH[1]}"
        else
            continue
        fi

        if ! [[ "$ws_id" =~ ^[0-9]+$ ]]; then
            continue
        fi

        apply_saved_layout_for_workspace "$ws_id"
    done
}

if [ "${1:-}" = "--daemon" ]; then
    run_daemon
else
    cycle_layout
fi
