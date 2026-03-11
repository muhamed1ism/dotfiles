# Fish Welcome message
set -g fish_greeting ''

# Commands to run in interactive sessions can go here
if status is-interactive

    # Starship
    starship init fish | source

    # zoxide
    zoxide init fish | source

    # atuin
    # set -gx ATUIN_INIT_FLAGS --disable-up-arrow
    set -gx ATUIN_NOBIND true
    atuin init fish | source

    # bind to ctrl-r in normal and insert mode, add any other bindings you want here too
    bind \cr _atuin_search
    bind -M insert \cr _atuin_search
end

# bat
alias cat='bat'

# eza
alias ll='eza -l --icons always --total-size'
alias ls='eza --icons always'

# set default editor as neovim
set -gx EDITOR nvim
set -gx VISUAL nvim

# use neovim instead of vim
alias vi='nvim'
alias vim='nvim'

# Go
set -gx GOPATH $HOME/go
fish_add_path $GOPATH/bin

# Android SDK
set -gx ANDROID_HOME $HOME/Android/Sdk/
fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin

# Java JDK
set -gx JAVA_HOME /usr/lib/jvm/java-21-openjdk
fish_add_path $JAVA_HOME/bin

# Cargo
fish_add_path $HOME/.cargo/bin

# Qt apps theming
# set -gx QT_QPA_PLATFORMTHEME qt6ct

# Podman Docker socket
# export DOCKER_HOST="unix:///run/user/$UID/podman/podman.sock"

# dotfiles git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
