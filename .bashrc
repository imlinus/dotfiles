# Promptless
export PS1=" › "

# Global colors
export BOLD="$(tput bold)"
export RED="$(tput setaf 9)"
export GREEN="$(tput setaf 10)"
export BLUE="$(tput setaf 12)"
export YELLOW="$(tput setaf 11)"
export WHITE="$(tput setaf 250)"
export GRAY="$(tput setaf 240)"
export UNDERLINE="$(tput sgr 0 1)"
export RESET="$(tput sgr0)"

export PRIMARY="$(tput setaf 10)" # 10

# Evironment variables
export PATH=$PATH:$HOME/bin

# Import scripts (file-manager, system-info and so on)
if [ -d "$HOME/.scripts" ]; then
  PATH="$HOME/.scripts:$PATH"
fi

# TOOLS

# For some reason I like it verbose
# And I dont even write Java :P
alias list="ls -1 --color=auto"
alias tree='find . | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias copy="cp -ir"
alias move="mv -i"
alias rename="mv"
alias remove="rm -rfi"
alias preview="cat"
alias folder:size="du -hs * | sort -h"
# alias locate='"$(pwd -P)" -name "$1"'

# Im that lazy
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# RANDOM
alias weather="curl -w '\n' https://wttr.in/stockholm"
alias ascii:text="curl -s https://raw.githubusercontent.com/imlinus/ascii-font/main/ascii-font | bash -s"
alias hello="echo 'Hello!'"
alias fuck='sudo $(fc -ln -1)'

# SYSTEM
alias system:shutdown="shutdown now"
alias system:reboot="shutdown -r now"
alias system:info="system-info"
alias system:battery="cat /sys/class/power_supply/BAT0/capacity"
alias system:empty-trash="rm -rf  ~/.local/share/Trash/files"

alias system:volume="amixer sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }'"
alias system:volume:up="amixer set Capture 5%+ --quiet"
alias system:volume:down="amixer set Capture 5%- --quiet"

# USER
alias user:logout="sudo pkill -u linus & exit"

# NETWORK
alias network:ping="ping -c 5 -O"
alias network:ip="curl -w '\n' ifconfig.me"
alias network:randomize-mac="change-mac-address"

# HELP
alias help:more="help-more"


help () {
cat <<EOF

    ${WHITE}█ █ █▀█ █  █▀█${RESET}
    ${WHITE}█▀█ █▄▄ █▄ █▀▀${RESET}

    cheatsheet
    network
    tools
    system
    user
    help:more

EOF
}

# Apps
alias browser="firefox --kiosk > /dev/null 2>&1 &"
alias email="firefox https://mail.google.com/mail/u/0/ --kiosk > /dev/null 2>&1 &"

# Thinkpad specific
# alias brightness="xrandr --output eDP-1 --brightness"

# exec /usr/bin/window-manager &

system-info
