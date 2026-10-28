PROMPT='%B%F{42}%n@%m%F{reset}%b:%B%F{12}%(4~|%-1~/.../%1~|%3~)%F{reset}%b$ '

autoload -Uz instant-zsh-pre
instant-zsh-pre "${PROMPT}"

# Don't add entries beginning with a space to the history
setopt HIST_IGNORE_SPACE

# allow colours in terminal
export CLICOLOR=1

# set `ls` colours
export LSCOLORS='ExGxFxdaCxDaDahbadacec'

# autocompletion
autoload -Uz compinit
compinit

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C "${HOMEBREW_PREFIX}/bin/terraform" terraform

# enable editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

# enable case-insensitive matching
zstyle ':completion:*' matcher-list \
  '' \
  '+m:{a-zA-Z}={A-Za-z}' \
  '+r:|[._-]=* r:|=*' \
  '+l:|=* r:|=*'

# command aliases
source "${ZDOTDIR}"/zsh_aliases

# path shortcuts
source "${ZDOTDIR}"/zsh_path_vars

# append history immediately
setopt share_history

# custom functions
autoload -Uz pip3

# use fzf as the Ctrl+R provider
source "${HOMEBREW_PREFIX}/opt/fzf/shell/key-bindings.zsh"

# Use shell intergation for Ghostty
if [[ -n "${GHOSTTY_RESOURCES_DIR}" ]]
then
    builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/zsh/ghostty-integration"
fi

autoload -Uz instant-zsh-post
instant-zsh-post
