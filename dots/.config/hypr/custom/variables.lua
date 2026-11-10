-- Put custom variables here
qsConfig = "ii"
hl.env("qsConfig", qsConfig)

-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
browser = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'google-chrome-stable' 'floorp' 'zen-browser' 'brave' 'chromium' 'microsoft-edge-stable' 'opera' 'librewolf' 'floorp'"  --@g browser
codeEditor = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'antigravity-ide' 'windsurf' 'antigravity' 'code' 'codium' 'cursor' 'zed' 'zedit' 'zeditor' 'kate' 'gnome-text-editor' 'emacs'"  --@g codeEditor
volumeMixer = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'pwvucontrol' 'pavucontrol-qt'"  --@g volumeMixer
taskManager = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'missioncenter' 'plasma-systemmonitor' 'btop' 'plasma-systemmonitor --page-name Processes'"  --@g taskManager
terminal = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'kitty -1' 'kwi' 'ghostty'"  --@g terminal
fileManager = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'dolphin' 'nautilus' 'nemo' 'thunar'"  --@g fileManager
textEditor = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'kitty -e ttt' 'code-oss' 'kate' 'gnome-text-editor' 'emacs'"  --@g textEditor
zscroll_overview_scale = 0.4                                                    --@g zscroll_overview_scale
zscroll_overview_layout = "horizontal"                                          --@g zscroll_overview_layout
-- <<< quickshell:managed:end
workspaceGroupSize = 10
