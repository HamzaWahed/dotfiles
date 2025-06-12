if status is-interactive
    # ------------------------------------------------------------------------------
    # Aliases
    # ------------------------------------------------------------------------------
    alias c clear
    alias v nvim
    alias x exit
    alias cd z
    alias lg lazygit
    alias python python3
    alias py python3
    alias pip pip3
    alias k kubectl
    alias quarantine "xattr -d com.apple.quarantine"
    alias fishconfig "nvim ~/.config/fish/config.fish"

    # ------------------------------------------------------------------------------
    # Key Bindings
    # ------------------------------------------------------------------------------
    fish_vi_key_bindings

    # ------------------------------------------------------------------------------
    # PATH Configuration
    # ------------------------------------------------------------------------------
    fish_add_path /opt/homebrew/bin
    fish_add_path ~/.dotnet/tools

    # ------------------------------------------------------------------------------
    # Completions
    # ------------------------------------------------------------------------------

    # ------------------------------------------------------------------------------
    # Plugins
    # ------------------------------------------------------------------------------
    starship init fish | source
    zoxide init fish | source
end
