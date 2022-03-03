# set fish prompt
set fish_greeting ""

# starship init
starship init fish | source

# set nvim as default editor
export EDITOR=nvim
set -gx EDITOR nvim

# theme
set -gx TERM xterm-256color

set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

set -Ux LC_CTYPE UTF-8
# alias
alias ll='/usr/bin/exa -l -g --icons --group-directories-first'
alias ls='/usr/bin/lsd -hA --group-dirs first'
alias lla="ll -a"
alias grep='grep --color=auto'
command -qv nvim && alias vim='/usr/bin/nvim'

# path
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

# chips
if [ -e ~/.config/chips/build.fish ] ; . ~/.config/chips/build.fish ; end
