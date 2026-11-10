-- AMD GPU Environment Variables
hl.env("LIBVA_DRIVER_NAME", "radeonsi")
hl.env("VDPAU_DRIVER", "radeonsi")
hl.env("XDG_SESSION_TYPE", "wayland")

-- Electron applications fix
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- QT Platform Theme
hl.env("QT_QPA_PLATFORMTHEME", "kde")
-- Default Applications
hl.env("EDITOR", "code") 
hl.env("TERMINAL", "kitty")
hl.env("FILE_MANAGER", "dolphin")
hl.env("BROWSER", "floorp")

hl.curve("pc_wobble", { type = "bezier", points = { { 0.15, 1.15 }, { 0.35, 1.0 } } })
hl.curve("pc_decel", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("pc_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, bezier = "pc_wobble", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "pc_accel", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "pc_decel", style = "slide" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4, bezier = "pc_decel" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 4, bezier = "pc_accel" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "pc_decel", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 4, bezier = "pc_accel", style = "slide" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "pc_decel", style = "slide" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 2, bezier = "pc_wobble", style = "slidevert" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 2, bezier = "pc_accel", style = "slidevert" })

hl.animation({ leaf = "fadeOut",    enabled = true, speed = 12, bezier = "linear" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 12, bezier = "linear", style = "popin 100%" })

-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
hl.env("LIBVA_DRIVER_NAME", "")                       --@e LIBVA_DRIVER_NAME
hl.env("QT_QPA_PLATFORMTHEME", "kde")                 --@e QT_QPA_PLATFORMTHEME
hl.env("GTK_USE_PORTAL", "1")                         --@e GTK_USE_PORTAL
hl.env("ELECTRON_USE_PORTAL", "1")                    --@e ELECTRON_USE_PORTAL
hl.env("HYPRCURSOR_THEME", "Empty-Butterfly-Yellow")  --@e HYPRCURSOR_THEME
hl.env("XCURSOR_THEME", "Empty-Butterfly-Yellow")     --@e XCURSOR_THEME
hl.env("HYPRCURSOR_SIZE", "24")                       --@e HYPRCURSOR_SIZE
hl.env("XCURSOR_SIZE", "24")                          --@e XCURSOR_SIZE
hl.env("QT_IM_MODULE", "ibus")                        --@e QT_IM_MODULE
hl.env("XMODIFIERS", "@im=ibus")                      --@e XMODIFIERS
hl.env("SDL_IM_MODULE", "ibus")                       --@e SDL_IM_MODULE
hl.env("GLFW_IM_MODULE", "ibus")                      --@e GLFW_IM_MODULE
hl.env("INPUT_METHOD", "ibus")                        --@e INPUT_METHOD
hl.env("EDITOR", "antigravity-ide")                   --@e EDITOR
-- <<< quickshell:managed:end
