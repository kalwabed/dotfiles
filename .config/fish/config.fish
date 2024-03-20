if status is-interactive
    atuin init fish | source
end

#Display Pokemon
krabby random --no-title

set fzf_preview_dir_cmd eza --all --color=always

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# place at the end of file
zoxide init --cmd cd fish | source
starship init fish | source
