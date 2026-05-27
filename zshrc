# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# End of lines added by compinstall

# plugins
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/plugins/extract/extract.sh
source ~/.zsh/plugins/zsh-z/zsh-z.plugin.zsh
source ~/.zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.zsh/plugins/ohmyzsh/plugins/git/git.plugin.zsh

# cd -n
setopt pushdsilent      # Omit printing directory stack
setopt autopushd        # Make cd push directories onto stack
setopt pushdignoredups  # Remove duplicates from directory heap
setopt pushdminus       # Invert meanings of +N and -N arguments to pushd

setopt hist_ignore_all_dups

bindkey '^[[Z'  reverse-menu-complete # shift + tab
bindkey '^[[H'  beginning-of-line
bindkey '^[[F'  end-of-line
bindkey '^[[3~' delete-char
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# always use 256 colors
[[ "$TERM" == "xterm" ]] && export TERM=xterm-256color

# fzf
zvm_after_init_commands+=('[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh')

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

# alias
alias ls='ls --color=always'
alias x='extract'

export EDITOR='vim'
export MANROFFOPT='-c'
command -v bat &> /dev/null && export MANPAGER="sh -c 'col -bx | bat -l man -p'"

eval "$(starship init zsh)"

export PATH=$IMAGE_PATH:$PATH
export LD_LIBRARY_PATH=$IMAGE_LD_LIBRARY_PATH:$LD_LIBRARY_PATH


export PATH=$PATH:/usr/local/cuda:/usr/local/cuda/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/targets/x86_64-linux/lib:/usr/local/lib
export CUDA_HOME=/usr/local/cuda
. "$HOME/.cargo/env"

export RUSTUP_UPDATE_ROOT=https://mirrors.aliyun.com/rustup/rustup
export RUSTUP_DIST_SERVER=https://mirrors.aliyun.com/rustup


# uv
export PATH="/root/.local/bin:$PATH"
export UV_INDEX_URL="https://artlab.alibaba-inc.com/1/PYPI/simple/"

alias claude='IS_SANDBOX=1 claude --allow-dangerously-skip-permissions --dangerously-skip-permissions'

