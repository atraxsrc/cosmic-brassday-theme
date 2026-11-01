# Brass Day zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-brassday-theme/zsh/brassday.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  bg:      #F4ECD6   fg:      #1D1C17
#  sand:    #77603B   amber:   #9E4E1A
#  brick:   #A63426   tan:     #7C602C
#  gold:    #855E19   clay:    #70614C
#  muted:   #67645B   dim:     #9A978C
#
# Light terminal: sand for commands, tan for strings, gold for links,
# brick only for what is wrong.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;112;97;76:ln=3;38;2;133;94;25:ex=1;38;2;119;96;59:*.zip=4;38;2;158;78;26:*.tar=4;38;2;158;78;26:*.gz=4;38;2;158;78;26:*.xz=4;38;2;158;78;26:*.7z=4;38;2;158;78;26:*.deb=4;38;2;158;78;26:*.png=38;2;103;100;91:*.jpg=38;2;103;100;91:*.jpeg=38;2;103;100;91:*.webp=38;2;103;100;91:*.gif=38;2;103;100;91:*.mp4=3;38;2;103;100;91:*.mkv=3;38;2;103;100;91:*.rs=38;2;124;96;44:*.py=38;2;124;96;44:*.js=38;2;124;96;44:*.ts=38;2;124;96;44:*.sh=38;2;124;96;44:*.md=38;2;108;100;82:*.txt=38;2;108;100;82:or=9;38;2;166;52;38"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#A7A299'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#77603B'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#77603B'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#77603B'
ZSH_HIGHLIGHT_STYLES[function]='fg=#77603B'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#77603B'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#77603B,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#7C602C,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#70614C,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#A63426,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#6C6452,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#9E4E1A'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#9E4E1A'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#67645B'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#67645B'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#7C602C'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#7C602C'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#7C602C'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#67645B'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#67645B'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#9A978C'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

# lazygit reads one config file; stack the rice colours (lazygit/brassday.yml,
# installed by ./lazygit/install.sh) on top of your own config.yml
if (( $+commands[lazygit] )); then
    _brassday_lg="${XDG_CONFIG_HOME:-$HOME/.config}/lazygit"
    if [[ -f $_brassday_lg/brassday.yml ]]; then
        export LG_CONFIG_FILE="$_brassday_lg/brassday.yml"
        [[ -f $_brassday_lg/config.yml ]] && LG_CONFIG_FILE="$_brassday_lg/config.yml,$LG_CONFIG_FILE"
    fi
    unset _brassday_lg
fi

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"
