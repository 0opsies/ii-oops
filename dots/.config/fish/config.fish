
# function fish_prompt -d "فلسطين عاشت 🔻"
#     # This shows up as USER@HOST /home/user/ >, with the directory colored
#     # $USER and $hostname are set by fish, so you can just use them
#     # instead of using `whoami` and `hostname`
#     printf '🔻عاشت فلسطين🔻 %s '
#     set_color green
#     printf 'عاشت فلسطين 🔻 %s' (prompt_pwd)
#     set_color normal
#     printf ' : '
# end

if status is-interactive # Commands to run in interactive sessions can go here

    # No greeting
    set fish_greeting
    echo "
    ~~~~~~~~~~ 🇵🇸 عاشت فلسطين 🇵🇸 ~~~~~~~~~~~~~~
     ┳  o┳━┓┳━┓┳━┓┳━┓┏┓┓┳━┓  ┏━┓┳━┓┏━┓┳━┓
     ┃  ┃┃━┃┣━ ┃┳┛┃━┫ ┃ ┣━   ┃ ┳┃━┫┏━┛┃━┫
     ┇━┛┇┇━┛┻━┛┇┗┛┛ ┇ ┇ ┻━┛  ┇━┛┛ ┇┗━┛┛ ┇
    ┳━┓┳━┓┳━┓┳━┓  ┳━┓┳━┓┳  ┳━┓┓━┓┏┓┓┳━┓┳━┓┏┓┓
    ┣━ ┃┳┛┣━ ┣━   ┣━ ┃━┫┃  ┃━┫┗━┓ ┃ ┣━ ┣━ ┃┃┃
    ┇  ┇┗┛┻━┛┻━┛  ┇  ┛ ┇┇━┛┛ ┇━━┛ ┇ ┻━┛┻━┛┇┗┛
    ┳━┓┳━┓┳━┓┏┓┓┳ ┳  ┏┓┓┏━┓  ┏┓┓┳ ┳┳━┓  o┏━┓┳━┓
    ┃ ┃┣━ ┃━┫ ┃ ┃━┫   ┃ ┃ ┃   ┃ ┃━┫┣━   ┃┃ ┃┣━
    ┇━┛┻━┛┛ ┇ ┇ ┇ ┻   ┇ ┛━┛   ┇ ┇ ┻┻━┛  ┇┛━┛┇
    ~~~~~~~~~~ 🇵🇸 عاشت فلسطين 🇵🇸 ~~~~~~~~~~~~~~    "
    end

#-----------------------------------#
#     _    _ _                      |
#    / \  | (_) __ _ ___  ___  ___  |
#   / _ \ | | |/ _` / __|/ _ \/ __| |
#  / ___ \| | | (_| \__ \  __/\__ \ |
# /_/   \_\_|_|\__,_|___/\___||___/ |
#-----------------------------------#

alias ups="sudo pacman -Syyu && yay && fuckorphans"
alias bigups="cachyos-rate-mirrors && sudo pacman -Syyu && yay && flatpak upgrade"
alias depme="sudo pacman -D --asdeps "
alias fuckorphans="sudo pacman -Rns (pacman -Qtdq)"
alias fucklocks="sudo rm /var/lib/pacman/db.lck"
alias fuckcache="yay -Scc"
#---------------------------------------------------
alias pacs='sudo pacman -S '
alias pacss="sudo pacman -Ss "
alias pacup="sudo pacman -Syyu "
alias pacsnc="sudo pacman -S --noconfirm "
alias ys='yay -S '
alias yayy='yay -Syyu --noconfirm '
alias yr='yay -R '
alias yrdd='yay -Rdd '
alias yrns='yay -Rns '
alias ysnc='yay -S --noconfirm '
#---------------------------------------------------
alias flatlist="flatpak list "
alias flatrm="flatpak remove "
alias flatrmu="flatpak remove --unused "
alias flatup="flatpak update "
alias flatin="flatpak install "
alias flatrun="flatpak run "
alias flatgtk="flatpak override --filesystem=xdg-config/gtk-4.0"
alias sigsave="paru -Sy cachyos-keyring"
#         ~~~~~~~~~~~~~~~~
alias config="spf ~/.config"
alias confhypr="spf ~/.config/hypr"
alias confhyprrules="ttt ~/.config/hypr/custom/rules.conf"
alias confpacman="sudo ttt /etc/pacman.conf"
alias confkeys="ttt ~/.config/hypr/custom/keybinds.conf"
alias conffish="ttt ~/.config/fish/config.fish"
alias confzsh="ttt ~/.zshrc"
alias confbash="ttt ~/.bashrc"
alias confbash="ttt ~/.bashrc"
alias confniri="ttt ~/.config/niri/config.kdl"
alias confmango="spf ~/.config/mango/"

#         ~~~~~~~~~~~~~~~~
alias shellfish="chsh -s /bin/fish"
alias shellzsh="chsh -s /bin/zsh"
alias shellbash="chsh -s /bin/bash"
alias sctld='systemctl disable '
alias sctle='systemctl enable '

alias wcli="warp-cli "
alias wclis="warp-cli status"
alias wclie="warp-cli connect"
alias wclid="warp-cli disconnect"
#         ~~~~~~~~~~~~~~~~
alias bye='reboot' # Power - Restart
alias coma='systemctl poweroff'	# Power - ShutDown
alias uefi='systemctl reboot --firmware-setup' # Power - BIOS
alias zzz='wlogout'
alias xx="killall "
alias xxx='pkill '
#         ~~~~~~~~~~~~~~~~
alias lindev="curl -fsSL https://christitus.com/linuxdev | sh"
alias ytui='pacseek' # Pacman TUI
alias ff="fastfetch"
alias Ayu="nohup AyuGram"
alias fAyu="nohup flatpak run  com.ayugram.desktop"
alias gammalinux="curl -fsSL https://raw.githubusercontent.com/Fleorens/stalker-gamma-linux/main/install.sh | bash"
#         ~~~~~~~~~~~~~~~~
alias mouse-clay="hyprctl setcursor clay-dark 28"
alias mouse-cartoonish="hyprctl setcursor Cartoonish-Bold 28 "
alias mouse-win98="hyprctl setcursor ModernXP2 28 "
alias mouse-volantes="hyprctl setcursor volantes_cursors 28 "
alias mouse-material="hyprctl setcursor material_light_cursors 28"
alias mouse-wii="hyprctl setcursor Wii 30"
# ==============================================================================
 alias hpml="hyprpm list"
 alias hpme="hyprpm enable "
 alias hpmd="hyprpm disable "
 alias hmpa="hyprpm add "
 alias hpmu="hyprpm update"
alias hpmr="hyprpm reload"
alias hctl="hyprctl "
alias hctlg="hyprctl globalshortcuts"
alias hctld="hyprctl dispatch "
alias hctlm="hyprctl setcursor "
alias hctlc="hyprctl clients"
# ==============================================================================
alias dmss="nohup dms run "
alias nocshell="nohup qs -c noctalia-shell"
alias noct="nohup noctalia"
alias atmoshell="nohup atmosphera run"
alias iii="nohup qs -c ii"
alias iioops="nohup qs -c ii"
alias e4="nohup qs -c end4-pC"
alias p3="nohup qs -c p3drofx"
# ==============================================================================
alias own="sudo chown -R \$USER:\$USER "
alias exe="chmod +x "
alias group="sudo usermod -aG "
#         ~~~~~~~~~~~~~~~~
alias spa="spicetify apply"
alias spu="spicetify update"
alias spba="spicetify backup apply"
alias sprba="spicetify restore backup apply"
alias ivlyrics="curl -fsSL https://ivlis.kr/ivLyrics/install.sh | bash"
# ==============================================================================
alias zquick="cd ~/.config/quickshell/"
alias zspot="cd ~/.config/spicetify/"
alias zconf="cd ~/.config/"
# ==============================================================================
alias scx-lavd="scxctl switch --sched lavd --mode auto"
alias scx-rusty="scxctl switch --sched rusty --mode auto"
alias scx-lavdgame="scxctl switch --sched lavd --mode gaming"
alias scx-cake="scxctl switch --sched cake --mode auto"
alias scx-beer="scxctl switch --sched beerland --mode auto"
# ==============================================================================
alias wifi-usb-up="sudo ip link set wlan1 up"
alias wifi-pci-up="sudo ip link set wlan0 up"
alias wifi-usb-down="sudo ip link set wlan1 down"
alias wifi-pci-down="sudo ip link set wlan0 down"
alias wifi?="nmcli device"

zoxide init fish | source
test -d ~/.spicetify; and fish_add_path ~/.spicetify
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland

## Nebula shell
test -d "$HOME/.local/state/quickshell/.venv"; and set -gx NEBULA_VENV "$HOME/.local/state/quickshell/.venv"
## set -gx QML_IMPORT_PATH "$HOME/.local/lib/qt6/qml" $QML_IMPORT_PATH
