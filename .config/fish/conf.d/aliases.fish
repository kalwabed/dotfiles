if status is-interactive
    # Helpful aliases
    alias l='eza -lh  --icons=auto' # long list
    alias ls='eza -1   --icons=auto' # short list
    alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
    alias ld='eza -lhD --icons=auto' # long list dirs
    alias un='$aurhelper -Rns' # uninstall package
    alias up='$aurhelper -Syu' # update system/package/aur
    alias pl='$aurhelper -Qs' # list installed package
    alias pa='$aurhelper -Ss' # list availabe package
    alias pc='$aurhelper -Sc' # remove unused cache
    alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
    alias vc='code --disable-gpu' # gui code editor
    alias cl=clear
    alias find=fd
    alias cat=bat
    alias hx=helix
    alias top=btop
    alias :q=exit

    # pnpm alias
    alias pn="pnpm"
    alias pni="pnpm install"
    alias pna="pnpm add"
    alias pnad="pnpm add -D"
    alias pnu="pnpm up -Li"
    alias pnd="pnpm run dev"

    # Fixes "Error opening terminal: xterm-kitty" when using the default kitty term to open some programs through ssh
    alias ssh='kitten ssh'
end
