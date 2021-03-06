# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

export GOPATH=$HOME/go
# Set name of the theme to load --- if set to "random", it will be random
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="amuse"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git tmux rust nvm golang fzf)

source $ZSH/oh-my-zsh.sh

# export GPG_TTY=$(tty)

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# PROMPT='%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info)
# $(virtualenv_info)'
# PROMPT+=' ⚡️ '

# alias
alias vi="nvim"
alias v="nvim"
alias goworkspace="cd ~/go/src/github.com/brunooomelo/"
alias reloadzsh="source ~/.zshrc; echo 'zsh loaded 🔥'"
alias dotfiles="cd ~/sideprojects/dotfiles"
alias z="fg"

# zen mode
set ZEN_MODE = false
# Função para alternar o estado
zmode() {
    if $ZEN_MODE; then
        yabai -m space --padding rel:0:0:-600:-600
        ZEN_MODE=false
    else
        yabai -m space --padding rel:0:0:600:600
        ZEN_MODE=true
    fi
}

# determine package manager and run command with it 
np() {
  if [[ -f bun.lockb ]]; then
    command bun "$@"
  elif [[ -f pnpm-lock.yaml ]]; then
    command pnpm "$@"
  elif [[ -f yarn.lock ]]; then
    command yarn "$@"
  elif [[ -f package-lock.json ]]; then
    command npm "$@"
  else
    command pnpm "$@"
  fi
}

# open PR on github
pr () {
    if type gh &> /dev/null; then
      gh pr view -w
    else
	echo "gh is not installed"
    fi
}

# open search my shell history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
