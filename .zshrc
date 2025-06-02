export PATH=/opt/homebrew/bin:$PATH

# Created by `pipx` on 2024-06-12 08:53:15
export PATH="$PATH:/Users/miguelklemmsilva/.local/bin"

eval "$(zoxide init zsh)"

source <(fzf --zsh)

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.config/zsh/git-completion.bash
fpath=(~/.config/zsh $fpath)
autoload -Uz compinit && compinit

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle     -N  up-line-or-beginning-search
zle     -N  down-line-or-beginning-search

# Activate syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# better ls
alias ls="eza --all --icons=always"

bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
if [[ "${widgets[zle-keymap-select]#user:}" == "starship_zle-keymap-select" || \
      "${widgets[zle-keymap-select]#user:}" == "starship_zle-keymap-select-wrapped" ]]; then
    zle -N zle-keymap-select "";
fi

eval "$(starship init zsh)"

