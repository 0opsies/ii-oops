-- User Keybindings

    -- HYPRSPACE: Toggle overview on all monitors
hl.bind("SUPER + SHIFT + TAB", function()
    hl.plugin.overview.toggle("all")
end, { description = "Toggle Hyprspace overview on all monitors" })

hl.bind("CTRL + SUPER + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/illogical-impulse/config.json"),
    { description = "Edit shell config" })

hl.bind("CTRL + SUPER + ALT + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"),
    { description = "Edit user keybinds" })

-- Close programs
hl.bind("SUPER + BACKSPACE", hl.dsp.window.close(), { description = "Close program" })
hl.bind("SUPER + SHIFT + BACKSPACE", hl.dsp.exec_cmd("~/.config/hypr/custom/scripts/kill-active.sh"),
    { description = "Force kill active window" })

hl.bind("SUPER + SHIFT + G", hl.dsp.global("quickshell:overlayToggle"), { description = "Shell: Toggle widget overlay" })

hl.bind("CTRL + SHIFT + Space", hl.dsp.exec_cmd("kando -m hypr"), { description = "Kando" })


-- hl.bind("SUPER + CTRL + Return", hl.dsp.exec_cmd("ghostty"), { description = "Ghostty" })

hl.bind("ALT + E", hl.dsp.exec_cmd("vicinae vicinae://launch/core/search-emojis"))

hl.bind("SUPER + CTRL + Tab", hl.dsp.exec_cmd("~/.config/hypr/custom/scripts/switch-shell.sh toggle"),
    { description = "Shell: Toggle shell" })

hl.bind("SUPER + CTRL + SHIFT + Tab", hl.dsp.exec_cmd("~/.config/hypr/custom/scripts/switch-shell.sh menu"),
    { description = "Shell: Open shell menu" })

  -- Launch agy in dedicated floating terminal
    hl.bind("SUPER + SHIFT + SLASH", hl.dsp.exec_cmd("ghostty --class=com.agy.term -e agy"),
        { description = "App: Antigravity CLI" })



-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
-- pcall(hl.unbind, "SUPER + Space")                                               --@u SUPER+space
-- pcall(hl.unbind, "SUPER + SUPER_L")                                             --@u SUPER+super_l
-- hl.bind("SUPER + SUPER_L", hl.dsp.global("quickshell:overviewWorkspacesToggle"), { description = "Shell: Toggle search" })  --@b SUPER+super_l
pcall(hl.unbind, "CTRL + SUPER + C")                                            --@u CTRL+SUPER+c
pcall(hl.unbind, "SUPER + O")                                                   --@u SUPER+o
hl.bind("SUPER + O", hl.dsp.global("quickshell:overviewWorkspacesToggle"), { description = "Shell: Toggle overview" })  --@b SUPER+o
--@u SUPER+v
pcall(hl.unbind, "SUPER + L")                                                   --@u SUPER+l
pcall(hl.unbind, "SUPER + SHIFT + L")                                           --@u SUPER+SHIFT+l
pcall(hl.unbind, "SUPER + M")                                                   --@u SUPER+m
hl.bind("SUPER + M", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }), { description = "Window: Maximize" })  --@b SUPER+m
pcall(hl.unbind, "SUPER + SHIFT + R")                                           --@u SUPER+SHIFT+r
hl.bind("SUPER + SHIFT + R", hl.dsp.global("quickshell:regionRecordWithSound"), { description = "Utilities: Record region (no sound)", locked = true })  --@b SUPER+SHIFT+r
pcall(hl.unbind, "CTRL + SUPER + Slash")                                        --@u CTRL+SUPER+slash
pcall(hl.unbind, "SUPER + BACKSPACE")                                           --@u SUPER+backspace
hl.bind("SUPER + BACKSPACE", hl.dsp.window.close(), { description = "Window: Close program" })  --@b SUPER+backspace
pcall(hl.unbind, "CTRL + SHIFT + Space")                                        --@u CTRL+SHIFT+space
hl.bind("CTRL + SHIFT + Space", hl.dsp.exec_cmd("kando -m hypr"), { description = "App: Kando" })  --@b CTRL+SHIFT+space
pcall(hl.unbind, "CTRL + SUPER + Return")                                       --@u CTRL+SUPER+return
hl.bind("CTRL + SUPER + Return", hl.dsp.exec_cmd("ghostty"), { description = "App: Ghostty" })  --@b CTRL+SUPER+return
pcall(hl.unbind, "SUPER + V")                                                   --@u SUPER+v
hl.bind("SUPER + V", hl.dsp.exec_cmd("vicinae vicinae://launch/clipboard/history"), { description = "Utilities: (vicinae) clipboard" })  --@b SUPER+v
pcall(hl.unbind, "CTRL + SUPER + ALT + Slash")                                  --@u CTRL+SUPER+ALT+slash
pcall(hl.unbind, "SUPER + C")                                                   --@u SUPER+c
pcall(hl.unbind, "CTRL + SUPER + ALT + SHIFT + W")                              --@u CTRL+SUPER+ALT+SHIFT+w
pcall(hl.unbind, "ALT + Backslash")                                             --@u ALT+backslash
hl.bind("ALT + Backslash", hl.dsp.group.next())                                 --@b ALT+backslash
pcall(hl.unbind, "SUPER + SHIFT + N")                                           --@u SUPER+SHIFT+n
hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("anytype"), { description = "App: Notes (Anytype)" })  --@b SUPER+SHIFT+n
pcall(hl.unbind, "CTRL + Space")                                                --@u CTRL+space
pcall(hl.unbind, "SUPER + SHIFT + B")                                           --@u SUPER+SHIFT+b
pcall(hl.unbind, "SUPER + ALT + M")                                             --@u SUPER+ALT+m
pcall(hl.unbind, "SUPER + SHIFT + P")                                           --@u SUPER+SHIFT+p
pcall(hl.unbind, "CTRL + code:51")                                              --@u CTRL+code:51
hl.bind("CTRL + code:51", hl.dsp.exec_cmd("~/.config/hypr/custom/scripts/OverviewToggle.sh "))  --@b CTRL+code:51
pcall(hl.unbind, "CTRL + SUPER + SHIFT + Tab")                                  --@u CTRL+SUPER+SHIFT+tab
pcall(hl.unbind, "ALT + Space")                                                 --@u ALT+space
hl.bind("ALT + Space", hl.dsp.window.float({ action = "toggle" }), { description = "Window: Float/Tile" })  --@b ALT+space
pcall(hl.unbind, "SUPER + ALT + E")                                             --@u SUPER+ALT+e
hl.bind("SUPER + ALT + E", hl.dsp.exec_cmd("nemo"), { description = "App: Nautilus" })  --@b SUPER+ALT+e
pcall(hl.unbind, "SUPER + SHIFT + V")                                           --@u SUPER+SHIFT+v
hl.bind("SUPER + SHIFT + V", hl.dsp.global("quickshell:easyEffectsToggle"), { description = "Shell: Toggle EasyEffects App" })  --@b SUPER+SHIFT+v
pcall(hl.unbind, "SUPER + SHIFT + colon")                                       --@u SUPER+SHIFT+colon
hl.bind("SUPER + SHIFT + colon", hl.dsp.global("quickshell:editModeToggle"))    --@b SUPER+SHIFT+colon
pcall(hl.unbind, "SUPER + SHIFT + D")                                           --@u SUPER+SHIFT+d
hl.bind("SUPER + SHIFT + D", hl.dsp.global("quickshell:dictationToggle"), { description = "Shell: Toggle Dictation" })  --@b SUPER+SHIFT+d
pcall(hl.unbind, "ALT + I")                                                     --@u ALT+i
hl.bind("ALT + I", hl.dsp.exec_cmd("systemsettings"), { description = "App: KDE Settings" })  --@b ALT+i
pcall(hl.unbind, "SUPER + SHIFT + C")                                           --@u SUPER+SHIFT+c
hl.bind("SUPER + SHIFT + C", hl.dsp.global("quickshell:clockClose"))            --@b SUPER+SHIFT+c
pcall(hl.unbind, "SUPER + S")                                                   --@u SUPER+s
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("special"), { description = "Shell: Toggle scratchpad" })  --@b SUPER+s
pcall(hl.unbind, "CTRL + SUPER + L")                                            --@u CTRL+SUPER+l
pcall(hl.unbind, "SUPER + W")                                                   --@u SUPER+w
pcall(hl.unbind, "CTRL + E")                                                    --@u CTRL+e
hl.bind("CTRL + E", hl.dsp.exec_cmd("emojify"))                                 --@b CTRL+e
pcall(hl.unbind, "SUPER + B")                                                   --@u SUPER+b
hl.bind("SUPER + B", hl.dsp.global("quickshell:barToggle"), { description = "Shell: Toggle bar" })  --@b SUPER+b
pcall(hl.unbind, "SUPER + SHIFT + W")                                           --@u SUPER+SHIFT+w
hl.bind("SUPER + SHIFT + W", hl.dsp.global("quickshell:wallpaperSelectorToggle"), { description = "Shell: Toggle wallpaper selector" })  --@b SUPER+SHIFT+w
pcall(hl.unbind, "ALT + SHIFT + Delete")                                        --@u ALT+SHIFT+delete
hl.bind("ALT + SHIFT + Delete", hl.dsp.global("quickshell:healthToggle"), { description = "Shell: Toggle System Health Panel" })  --@b ALT+SHIFT+delete
pcall(hl.unbind, "CTRL + SHIFT + Tab")                                          --@u CTRL+SHIFT+tab
hl.bind("CTRL + SHIFT + Tab", hl.dsp.group.next(), { description = "Shell: Next in Group" })  --@b CTRL+SHIFT+tab
pcall(hl.unbind, "SUPER + G")                                                   --@u SUPER+g
hl.bind("SUPER + G", hl.dsp.group.toggle(), { description = "group" })          --@b SUPER+g
pcall(hl.unbind, "SUPER + SUPER_L")                                             --@u SUPER+super_l
pcall(hl.unbind, "SUPER + SPACE")                                               --@u SUPER+space
hl.bind("SUPER + SPACE", hl.dsp.global("quickshell:overviewWorkspacesToggle"))  --@b SUPER+space
pcall(hl.unbind, "SUPER + SUPER_R")                                             --@u SUPER+super_r
pcall(hl.unbind, "SUPER + code:82")                                             --@u SUPER+code:82
pcall(hl.unbind, "SUPER + SHIFT + SLASH")                                       --@u SUPER+SHIFT+slash
hl.bind("SUPER + SHIFT + SLASH", hl.dsp.exec_cmd("ghostty --class=com.agy.term -e agy"), { description = "App: Antigravity CLI" })  --@b SUPER+SHIFT+slash
pcall(hl.unbind, "qs-overview toggle")                                          --@u qs-overview toggle
-- hl.bind("SUPER + TAB", hl.dsp.global("quickshell:overviewWorkspacesToggle"), { description = "Shell: Toggle overview" })  --@b qs-overview toggle
pcall(hl.unbind, "SUPER + Tab")                                                 --@u SUPER+tab
pcall(hl.unbind, "SUPER + SHIFT + TAB")                                         --@u SUPER+SHIFT+tab
pcall(hl.unbind, "SUPER + T")                                                   --@u SUPER+t
pcall(hl.unbind, "CTRL + ALT + T")                                              --@u CTRL+ALT+t
pcall(hl.unbind, "CTRL + SHIFT + P")                                            --@u CTRL+SHIFT+p
hl.bind("CTRL + SHIFT + P", hl.dsp.exec_cmd("qs -c ii ipc call passwordManager toggle"), { description = "Shell: Toggle Bitwarden Vault" })  --@b CTRL+SHIFT+p
pcall(hl.unbind, "SUPER + Period")                                              --@u SUPER+period
pcall(hl.unbind, "SUPER + Print")                                               --@u CTRL+print
pcall(hl.unbind, "SUPER + SHIFT + M")                                           --@u SUPER+SHIFT+m
hl.bind("SUPER + SHIFT + M", hl.dsp.global("quickshell:modesToggle"), { description = "Shell: Toggle modes & routines" })  --@b SUPER+SHIFT+m
-- <<< quickshell:managed:end

hl.bind("SUPER + TAB", hl.dsp.exec_cmd("qs-overview toggle"), {description = "toggle independant overview"})

