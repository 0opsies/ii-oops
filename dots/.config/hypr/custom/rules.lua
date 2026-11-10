-- ######## Custom Window Rules ########

-- Vicinae (app launcher overlay)
hl.window_rule({ match = { class = "^(Vicinae)$" }, float = true })
hl.window_rule({ match = { class = "^(Vicinae)$" }, center = true })
hl.window_rule({ match = { class = "^(Vicinae)$" }, pin = true })

-- Transparency + blur for specific apps
hl.window_rule({ match = { class = "^(kitty)$" }, opacity = "0.85 0.8" })
hl.window_rule({ match = { class = "^(kitty)$" }, suppress_event = "maximize" })
hl.window_rule({ match = { class = "^(code-url-handler)$" }, opacity = "0.85 0.8" })
hl.window_rule({ match = { class = "^(code)$" }, opacity = "0.95 0.8" })
hl.window_rule({ match = { class = "^(dolphin)$" }, opacity = "0.9 0.9" })
hl.window_rule({ match = { class = "^(antigravity-ide)$" }, opacity = "0.95 0.95" })

-- Kando Window Rules
hl.window_rule({
    match = { class = "^(menu\\.kando\\.Kando)$" },
    no_blur = true,
    opaque = true,
    border_size = 0,
    no_anim = true,
    float = true,
    pin = true,
})

-- hl.window_rule({
--     name = "Kitty FloatyBlurry",
--     match = {
--         class = "^(kitty)$",
--     },
--     opacity = "0.60 0.60",
--     size = "760 469",
-- })

hl.window_rule({
    match = {
        class = "^(nemo|org\\.gnome\\.Nautilus|nautilus)$",
    },
    size = "682 415",
    float = true,
})


-- hl.window_rule({
--     match = {
--         class = "^(io\\.github\\.bluemancz\\.hyprmod)$",
--     },
--     size = "853 537",
--     float = true,
-- })
hl.window_rule({
    match = {
        class = "^(menu\\.kando\\.Kando)$",
    },
    float = true,
})
hl.window_rule({
    match = {
        class = "^(pavucontrol\\-qt\\pwvucontrol)$",
    },
    workspace = "special",
})

-- Floating side drawer for agy (Antigravity CLI)
    hl.window_rule({
        match = { class = "^(com\\.agy\\.term)$" },
        float = true,
        size = "544 1000",
        move = {"(monitor_w - 556)", 54}, -- Right edge with 12px margin, 54px from top
        -- Optional extras:
        pin = true,                     -- Keeps it visible across all workspaces
        opacity = "0.95 0.90",          -- Active / inactive opacity
    })

hl.window_rule({
    match = { fullscreen = true },
    opaque = true,
})

-- Float and clean up overlay popups
hl.window_rule({
    match = {
        class = "^[Ss]team[Aa]chievement[Nn]otifier$",
    },
    float = true,
    no_focus = true,
    no_initial_focus = true,
    no_blur = true,
    no_shadow = true,
    border_size = 0,
    pin = true,
})

-- Prevent focus theft from fullscreen games
hl.window_rule({
    match = {
        class = "^[Ss]team[Aa]chievement[Nn]otifier$",
        title = "^SAN_.*", -- matches notification overlay windows
    },
    stay_focused = false,
    suppress_event = "activatefocus",
})



-- >>> quickshell:managed:begin v1 - written by Settings -> Hyprland. Edits here are overwritten; put your own Lua above.
hl.window_rule({ match = { class = "^(com.github.wwmm.easyeffects)$" }, float = true, center = true, opacity = "0.85" })  --@r app:waydroid
hl.window_rule({ match = { class = "^(com\\.saivert\\.pwvucontrol)$" }, opacity = "0.85", center = true })  --@r app:com-saivert-pwvucontrol
hl.window_rule({ match = { class = "^(dolphin)$" }, float = true, center = true, opacity = "0.78", size = "1062 644" })  --@r app:dolphin
hl.window_rule({ match = {} })                                                  --@r win:1
hl.window_rule({ match = { class = "^(xdg-desktop-portal-gtk)$" }, float = true, center = true })  --@r app:xdg-desktop-portal-gtk
hl.window_rule({ match = { class = "^(vivaldi-agimnkijcaahngcdmfeangaknmldooml-Profile_1)$", fullscreen = 1, workspace = "6" }, workspace = "6", idle_inhibit = "focus" })  --@r app:vivaldi-agimnkijcaahngcdmfeangaknmldooml
hl.window_rule({ match = { class = "^(vivaldi-ibokhhgiboeeojjdojiajjcelfclfjgg-Profile_1)$", workspace = "7", fullscreen = 1 }, workspace = "7" })  --@r app:vivaldi-ibokhhgiboeeojjdojiajjcelfclfjgg
hl.window_rule({ match = { class = "^(org\\.quickshell)$", title = "ii Clock" }, float = true, center = true })  --@r app:org-quickshell
hl.window_rule({ match = { class = "^(org\\.gnome\\.Loupe)$" }, size = "1378 795", float = true, center = true })  --@r app:org-gnome-loupe
hl.window_rule({ match = { class = "^(floorp)$", title = "Extension: (Bitwarden Password Manager) - Bitwarden — Floorp" }, float = true })  --@r app:firedragon
hl.window_rule({ match = { class = "^(steam)$" }, workspace = "3" })            --@r app:steam
hl.window_rule({ match = { class = "^(steam_app_default)$", xwayland = 1 }, opacity = "0.95", float = true, size = "1517 946", center = true })  --@r app:steam-app-default
hl.window_rule({ match = { class = "^(com\\.mitchellh\\.ghostty)$" }, opacity = "0.9" })  --@r app:com-mitchellh-ghostty
hl.window_rule({ match = { class = "^(fdm)$" }, float = true, center = true, size = "1120 725" })  --@r app:fdm
hl.window_rule({ match = { class = "^(clonehero)$", workspace = "5", fullscreen = 1 }, tag = "game" })  --@r app:clonehero
hl.window_rule({ match = { class = "^(com\\.google\\.Gemini)$" }, float = true, opacity = "0.9", workspace = "special", size = "1200 800" })  --@r app:com-google-gemini
hl.window_rule({ match = { class = "^(chm)$" }, float = true, center = true, opacity = "0.9" })  --@r app:chm
hl.window_rule({ match = { class = "^(kitty)$" }, float = true, center = true, opacity = "0.90", size = "512 680", move = "359 108" })  --@r app:kitty
hl.window_rule({ match = { class = "^(warp-taskbar)$" }, float = true, center = true })  --@r app:warp-taskbar
hl.window_rule({ match = { class = "^(antigravity-ide)$" }, opacity = "0.9" })  --@r app:antigravity-ide
hl.window_rule({ match = { class = "^(ark)$" }, opacity = "0.9", size = "930 575", float = true })  --@r app:ark
hl.window_rule({ match = { class = "^(org\\.kde\\.dolphin)$" }, float = true, opacity = "0.9", size = "1000 615" })  --@r app:org-kde-dolphin
-- <<< quickshell:managed:end
