#::::::::#
#  INIT  #
#::::::::#

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="spaceship"
SPACESHIP_CHAR_SYMBOL="ム "

plugins=(git zsh-syntax-highlighting nvm)
skip_global_compinit=1

source $ZSH/oh-my-zsh.sh

#:::::::::::::#
#  FUNCTIONS  #
#:::::::::::::#

timestamp(){
  $ts=date +"%s" | xclip -sel clip
  echo "current timestamp"
  date +"%s" && echo "coppied to clipboard :D"
}


#:::::::::::#
#  ALIASES  #
#:::::::::::#

# Arch
# alias //+="sudo pacman -S"
# alias //-="sudo pacman -R"

# Ubuntu
alias //+="sudo apt install"
alias //-="sudo apt remove && sudo apt autoremove"
alias finds="apt-cache search"
alias list="dpkg -l | grep ^ii"

# Daily commands
alias gotop="~/.config/gotop/gotop"
alias v="nvim"
alias ls="exa -a --classify"
alias c="clear"
alias x="exit"
alias IP="hostname -i"
alias today=timestamp

# Faster edits
alias vconf="cd $HOME/.config/nvim/ && nvim"

# Faster moves
alias G="cd $SETIA/gitpro"

# apache/httpd
alias htdocs="cd /srv/http"
alias apachestart="sudo systemctl start httpd.service"
alias apacherestart="sudo systemctl restart httpd.service"
alias apachestop="sudo systemctl stop httpd.service"
alias apacheconfig="sudo nvim /etc/httpd/conf/httpd.conf"

# mongodb
alias mongstart="sudo systemctl start mongodb.service"
alias mongstop="sudo systemctl stop mongodb.service"
alias mongrestart="sudo systemctl restart mongodb.service"
alias mongconfig="sudo nvim /etc/mongodb.conf"
alias mongrecover="sudo -u mongodb mongod --repair --dbpath /var/lib/mongodb/"

# Ricing
alias icheat="cat ~/.config/i3/config"
alias iconf="nvim ~/.config/i3/config"

alias pcheat="cat ~/.config/polybar/config"
alias pconf="nvim ~/.config/polybar/config"

alias zconf="nvim ~/.dotfiles/.zshrc"
alias zcheat="cat ~/.dotfiles/.zshrc"
alias zrefresh="source ~/.dotfiles/.zshrc"

alias xconf="nvim ~/.Xresources"
alias xcheat="cat ~/.Xresources"
alias xupdate="xrdb ~/.Xresources"

alias kconf="nvim ~/.config/kitty/kitty.conf"
alias kcheat="cat ~/.config/kitty/kitty.conf"

alias nconf="nvim ~/.config/neofetch/config.conf"
alias tconf="nvim ~/.config/terminator/config"
alias rconf="code ~/.config/rofi/mytheme.rasi"
alias neo="neofetch --w3m $HOME/Pictures/alex-perez-550765-unsplash-neo.jpg"
alias SS="scrot -c -d 2"

# OPENBOX CHEAT
alias obrcconf="v ~/.config/openbox/rc.xml"
alias obmenuconf="v ~/.config/openbox/menu.xml"
alias obautostartconf="v ~/.config/openbox/autostart"
alias obenvconf="v ~/.config/openbox/environment"

# PYTHON ALIASES
alias p="python"
alias ps="pipenv shell"
alias pm="python manage.py"

# Git
alias gs="git status"
