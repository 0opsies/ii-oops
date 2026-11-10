    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        vrr = 0,
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        animate_manual_resizes = true,
        animate_mouse_windowdragging = false,
        enable_swallow = true,
        swallow_regex = "(foot|kitty|ghostty|Alacritty)",
        on_focus_under_fullscreen = 2,
        allow_session_lock_restore = true,
        session_lock_xray = true,
        initial_workspace_tracking = false,
        focus_on_activate = true
    },


hl.config({
    cursor = {
        no_hardware_cursors = false
    },
    opengl = {
        nvidia_anti_flicker = false
    },
    debug = {
        overlay = false,
        damage_tracking = 2,
        disable_logs = false
    },
    group = {
        auto_group = false,
        drag_into_group = 1,
        merge_groups_on_drag = true,
        merge_floated_into_tiled_on_groupbar = true,
        merge_groups_on_groupbar = true,
        ["col.border_active"] = "rgba(afc6ffcc)",
        ["col.border_inactive"] = "rgba(44464f88)",
        groupbar = {
            enabled = true,
            font_size = 10,
            height = 24,
            render_titles = true,
            scrolling = true,
            ["col.active"] = "rgba(afc6ffcc)",
            ["col.inactive"] = "rgba(44464f88)",
            text_color = "rgba(121318ff)",
            text_color_inactive = "rgba(e2e2e9cc)",
        },
    },
    binds = {
        ignore_group_lock = true,
    }
})

-- Workspaces
hl.workspace_rule({
    workspace = "1",
    monitor = "DP-1",
    default = true,
})
hl.workspace_rule({
    workspace = "2",
    monitor = "DP-1",
})
hl.workspace_rule({
    workspace = "3",
    monitor = "DP-1",
})
hl.workspace_rule({
    workspace = "4",
    monitor = "DP-1",
})
hl.workspace_rule({
    workspace = "5",
    monitor = "DP-1",
})
hl.workspace_rule({
    workspace = "6",
    monitor = "DP-2",
    default = true,
})
hl.workspace_rule({
    workspace = "7",
    monitor = "DP-2",
})
hl.workspace_rule({
    workspace = "8",
    monitor = "DP-2",
})
hl.workspace_rule({
    workspace = "9",
    monitor = "DP-2",
})
hl.workspace_rule({
    workspace = "10",
    monitor = "DP-2",
})



-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
hl.animation({ leaf = "fadeOut",    enabled = true, speed = 20, bezier = "linear" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 10, bezier = "linear", style = "popin 100%" })
-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
hl.config({ input = { touchpad = { tap_to_click = false } } })                  --@k input:touchpad:tap_to_click
hl.config({ scrolling = { column_width = 0.83 } })                              --@k scrolling:column_width
hl.config({ binds = { workspace_back_and_forth = true } })                      --@k binds:workspace_back_and_forth
hl.config({ binds = { allow_workspace_cycles = true } })                        --@k binds:allow_workspace_cycles
hl.config({ binds = { workspace_center_on = 1 } })                              --@k binds:workspace_center_on
hl.config({ animations = { enabled = true } })                                  --@k animations:enabled
hl.config({ animations = { workspace_wraparound = true } })                     --@k animations:workspace_wraparound
hl.config({ input = { accel_profile = "adaptive" } })                           --@k input:accel_profile
hl.config({ scrolling = { direction = "right" } })                              --@k scrolling:direction
hl.config({ cursor = { default_monitor = "DP-1" } })                            --@k cursor:default_monitor
hl.config({ cursor = { no_hardware_cursors = 2 } })                             --@k cursor:no_hardware_cursors
hl.config({ decoration = { shadow = { sharp = false } } })                      --@k decoration:shadow:sharp
hl.config({ group = { auto_group = true } })                                    --@k group:auto_group
hl.config({ group = { groupbar = { gradient_round_only_edges = false } } })     --@k group:groupbar:gradient_round_only_edges
hl.config({ group = { groupbar = { height = 10 } } })                           --@k group:groupbar:height
hl.config({ scrolling = { focus_fit_method = 0 } })                             --@k scrolling:focus_fit_method
hl.config({ scrolling = { follow_min_visible = 0.1 } })                         --@k scrolling:follow_min_visible
hl.config({ input = { touchpad = { disable_while_typing = false } } })          --@k input:touchpad:disable_while_typing
hl.config({ dwindle = { smart_split = false } })                                --@k dwindle:smart_split
hl.config({ dwindle = { force_split = 0 } })                                    --@k dwindle:force_split
hl.config({ misc = { focus_on_activate = true } })                              --@k misc:focus_on_activate
hl.config({ master = { orientation = "center" } })                              --@k master:orientation
hl.config({ master = { new_status = "inherit" } })                              --@k master:new_status
hl.config({ decoration = { wobble = { enabled = true } } })                     --@k decoration:wobble:enabled
hl.config({ decoration = { wobble = { intensity = 0.1 } } })                    --@k decoration:wobble:intensity
hl.config({ decoration = { wobble = { stiffness = 200 } } })                    --@k decoration:wobble:stiffness
hl.config({ decoration = { wobble = { value_epsilon = 0.01 } } })               --@k decoration:wobble:value_epsilon
hl.config({ decoration = { wobble = { mesh = 2 } } })                           --@k decoration:wobble:mesh
hl.config({ decoration = { wobble = { mass = 0.07 } } })                        --@k decoration:wobble:mass
hl.config({ decoration = { wobble = { velocity_epsilon = 0.001 } } })           --@k decoration:wobble:velocity_epsilon
hl.config({ decoration = { wobble = { damping = 0.25 } } })                     --@k decoration:wobble:damping
hl.config({ decoration = { blur = { proportional = true } } })                  --@k decoration:blur:proportional
hl.config({ decoration = { glow = { enabled = false } } })                      --@k decoration:glow:enabled
hl.curve("iiAppOpen", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })  --@c iiAppOpen
hl.curve("iiAppSlide", { type = "bezier", points = { { 0.3, 0.7 }, { 0.1, 1 } } })  --@c iiAppSlide
hl.curve("iiAppClose", { type = "bezier", points = { { 0.32, 0.72 }, { 0, 1 } } })  --@c iiAppClose
hl.curve("iiAppFade", { type = "bezier", points = { { 0.2, 0.6 }, { 0.35, 1 } } })  --@c iiAppFade
hl.animation({ leaf = "windowsIn", enabled = true, speed = 8.51, bezier = "iiAppSlide", style = "slide" })  --@a windowsIn
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.8, bezier = "iiAppFade" })  --@a fadeIn
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4.94, bezier = "iiAppClose", style = "slide" })  --@a windowsOut
hl.animation({ leaf = "fadeOut", enabled = true, speed = 4.94, bezier = "iiAppClose" })  --@a fadeOut
hl.animation({ leaf = "windowsMove", enabled = true, speed = 7.6, bezier = "iiAppOpen", style = "slide" })  --@a windowsMove
hl.config({ input = { touchpad = { scroll_factor = 1.05 } } })                  --@k input:touchpad:scroll_factor
hl.config({ input = { kb_options = "grp:win_space_toggle,caps:none" } })        --@k input:kb_options
hl.config({ cursor = { inactive_timeout = 5.5 } })                              --@k cursor:inactive_timeout
hl.config({ input = { scroll_factor = 1 } })                                    --@k input:scroll_factor
hl.config({ misc = { swallow_regex = "kitty" } })                               --@k misc:swallow_regex
hl.config({ misc = { close_special_on_empty = false } })                        --@k misc:close_special_on_empty
hl.config({ general = { layout = "dwindle" } })                                 --@k general:layout
hl.config({ decoration = { blur = { variant = 1 } } })                          --@k decoration:blur:variant
-- <<< quickshell:managed:end
