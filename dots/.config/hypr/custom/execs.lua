hl.on("hyprland.start", function()
    -- Icon and Cursor styling
    -- hl.exec_cmd([[gsettings set org.gnome.desktop.interface icon-theme "Windows 7 Aero"]])
    hl.exec_cmd("hyprctl setcursor LHackneyed 28")

    -- Custom menus and the like
    hl.exec_cmd("kando")

    hl.exec_cmd("hyprpm reload -n")

    -- Input Remapper (delayed to prevent early boot race condition)
    hl.exec_cmd("bash -c 'sleep 3 && input-remapper-control --command autoload &'")
end)

hl.exec_cmd("vicinae server")

hl.on("hyprland.start", function ()
    hl.exec_cmd("qs-overview start")
end)

xwayland = {
    enabled = true,
}


