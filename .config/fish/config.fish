# This disables the Fish welcome message

set fish_greeting ""

if status is-interactive
    atuin init fish | source
end

#Display Pokemon
krabby random --no-title

set fzf_preview_dir_cmd eza --all --color=always

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Little script that only runs if Fish runs interactively and as a login shell. 
# If you have a display manager like GDM or LightDM, you won't need this
# You can just press Return to start River. You can also type "Y" or "y" to start it
# If you don't want to start River, just press Space or any letter

if status is-login && status is-interactive && not pidof -q river
    echo "- Select a WM"
    read response -n 1 -P "1 -> Hyprland"\n"2 -> River"\n"3 -> SwayFX"\n"4 -> Wayfire"\n"> "
    switch $response
        case 1 ""
            echo \n"Launching Hyprland..."\n
            dbus-run-session Hyprland
        case 2
            echo \n"Launching River..."\n
            dbus-run-session river
        case 3
            echo \n"Launching SwayFX..."\n
            dbus-run-session sway
        case 4
            echo \n"Launching Wayfire"\n
            dbus-run-session wayfire
        case '*'
            echo \n"No GUI for you..."\n
    end
end

# place at the end of file
zoxide init --cmd cd fish | source
starship init fish | source
