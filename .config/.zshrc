# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export LANG=en_US.UTF-8

export EDITOR="nvim"
export VISUAL="$EDITOR"
export MANPAGER="nvim +Man!"

DISABLE_AUTO_TITLE="true"
DISABLE_UPDATE_PROMPT="true"
DISABLE_MAGIC_FUNCTIONS="true"

setopt AUTO_CD
setopt NO_BEEP

export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"
export ZSH_CACHE_DIR="$ZSH/cache"
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump-$HOST"

MAILSYNC_MUTE=1
export SCREENSHOT_TOOL="gnome-screenshot"

ZSH_THEME="clean"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

zstyle ":omz:update" mode auto
zstyle ":omz:update" frequency 16

autoload -U compinit && compinit
autoload -U colors && colors

# plugins=(git zsh-autosuggestions zsh-syntax-highlighting dotenv)
plugins=(git dotenv)

[[ -r "$ZSH/oh-my-zsh.sh" ]] && \. "$ZSH/oh-my-zsh.sh"
[[ -r "$HOME/.zsh_aliases" ]] && \. "$HOME/.zsh_aliases"

[[ -r "$HOME/.fzf.zsh" ]] && \. "$HOME/.fzf.zsh"

export FZF_DEFAULT_COMMAND="fdfind --type f --hidden --follow --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fdfind --type d --hidden --follow --exclude .git"

export FZF_DEFAULT_OPTS="--border=rounded --bind='alt-j:down,alt-k:up'"

path_prepend() { case ":$PATH:" in *":$1:"*) ;; *) PATH="$1:$PATH" ;; esac }
path_append()  { case ":$PATH:" in *":$1:"*) ;; *) PATH="$PATH:$1" ;; esac }
typeset -U path PATH

# export NVM_DIR="$HOME/.nvm"
# [[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"
# [[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"

lazy_load() {
	unset -f node npm nvm npx
	export NVM_DIR="$HOME/.nvm"
	[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"
	[[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"
}

for cmd in node npm nvm npx; do
	eval "${cmd}() { lazy_load; ${cmd} \$@; }"
done

[[ -r "$HOME/.cargo/env" ]] && \. "$HOME/.cargo/env"
[[ -r "$HOME/.opam/opam-init/init.zsh" ]] && \. "$HOME/.opam/opam-init/init.zsh"

path_prepend "$HOME/.local/bin"
path_prepend "$HOME/.local/share/bob/nvim-bin"
path_prepend "$HOME/.juliaup/bin"

export BUN_DIR="$HOME/.bun"
path_prepend "$BUN_DIR/bin"

path_prepend "$HOME/.local/share/pnpm"

export RBENV_DIR="$HOME/.rbenv"
path_prepend "$RBENV_DIR/bin"
FPATH=~/.rbenv/completions:"$FPATH"
eval "$(rbenv init - --no-rehash zsh)"

path_append "/usr/local/go/bin"
export GOPATH="$HOME/go"
path_append "$GOPATH/bin"

export OPENCODE_DIR="$HOME/.opencode"
path_append "$OPENCODE_DIR/bin"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && \. "$SDKMAN_DIR/bin/sdkman-init.sh"

export QUARTO_PYTHON="$HOME/virtual_env/bin/python"
# export QUARTO_R="$HOME/..."
# export QUARTO_JULIA="$HOME/..."

alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"

alias venv="source ~/.venv/bin/activate"
alias dev="source ~/.dev/bin/activate"

alias rip="yt-dlp -x --audio-format='mp3'"

command -v uv >/dev/null && eval "$(uv generate-shell-completion zsh)"
command -v uvx >/dev/null && eval "$(uvx --generate-shell-completion zsh)"

[[ -f "$ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] &&
	\. "$ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

[[ -f "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] &&
	\. "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

open_pwd() { open . }
zle -N open_pwd
bindkey "^[." open_pwd

unset HISTFILE

# HISTFILE="$HOME/.zsh_history"
# HISTSIZE=100000
# SAVEHIST=100000
