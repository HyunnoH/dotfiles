# zmodload zsh/zprof

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt autocd
autoload -U compinit; compinit
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# 캐시 파일(.zcompdump)이 24시간보다 오래되었을 때만 갱신, 아니면 캐시 사용(-C)
# if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.mh+24) ]]; then
#   compinit
# else
#   compinit -C
# fi

# Enable plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Keybindings
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias vi=vim
alias vim=nvim
alias ls='ls --color'

# export MISE_TIMINGS=1
# export MISE_TRACE=1
# export MISE_DEBUG=1
eval "$(~/.local/bin/mise activate zsh)"

export LIBGL_ALWAYS_INDIRECT=1

eval "$(starship init zsh)"

#zprof
