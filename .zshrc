#::::::::#
#  INIT  #
#::::::::#

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="spaceship"
SPACESHIP_CHAR_SYMBOL="ム "
ZSH_TMUX_AUTOSTART=true

plugins=(
  git
  zsh-syntax-highlighting
  nvm
  tmux
)
skip_global_compinit=1

# Oh my zsh
source $ZSH/oh-my-zsh.sh

# pyenv
eval "$(pyenv init --path)"
export PYENV_SHELL=zsh
source $HOME/.pyenv/libexec/../completions/pyenv.zsh
command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")"
    ;;
  *)
    command pyenv "$command" "$@"
    ;;
  esac
}

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

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
alias cat="batcat"
alias v="nvim"
alias ls="exa -a --classify"
alias c="clear"
alias X="exit"
alias IP="hostname -i"
alias today=timestamp

# Shortcuts
alias dotupdate="cp -r $HOME/.config/nvim/lua/ $HOME/.dotfiles/nvim/ && cp $HOME/.config/nvim/init.lua $HOME/.dotfiles/nvim/"
alias zrefresh="source $DOT/.zshrc"

# Faster edits
alias vconf="nvim $HOME/.config/nvim"
alias zconf="nvim $DOT/.zshrc"
# alias termconf="nvim $WINHOME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
alias termconf="nvim $APPDATA/alacritty/alacritty.yml"
alias tconf="nvim $DOT/.tmux.conf"

# Faster moves
alias G="cd $WINHOME/gitpro"

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

# PYTHON ALIASES
alias p="python"
alias ps="pipenv shell"
alias pm="python manage.py"

# Git
alias gs="git status"

# OPENBOX CHEAT
alias obrcconf="v ~/.config/openbox/rc.xml"
alias obmenuconf="v ~/.config/openbox/menu.xml"
alias obenvconf="v ~/.config/openbox/environment"
alias obautostartconf="v ~/.config/openbox/autostart"
