if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Fish Welcome message
set -g fish_greeting ""

# Starship
if type -q starship
    starship init fish | source
end

# thefuck
if type -q thefuck
    thefuck --alias | source
end

# bat
if type -q bat
    alias cat='bat'
end

# eza
if type -q eza
    alias ll='eza -l --icons always --total-size'
    alias ls='eza --icons always'
end

# set default editor as neovim
if type -q nvim
    set -gx EDITOR nvim
    set -gx VISUAL nvim
end

# use neovim instead of vim
if type -q nvim
    alias vi nvim
    alias vim nvim
end

# Go
if type -q go
    export GOPATH="$HOME/go"
    export PATH="$GOPATH/bin:$PATH"
end

# Android SDK
export ANDROID_HOME="$HOME/Android/Sdk/"

# Java JDK
# export JAVA_HOME="$HOME/.jdks/jbr-17.0.14"

# Java 17
# export PATH="$JAVA_HOME/bin:$PATH"

# Cargo
if type -q cargo
    export PATH="$HOME/.cargo/bin:$PATH"
end

# atuin
if type -q atuin
    # set -gx ATUIN_INIT_FLAGS --disable-up-arrow
    set -gx ATUIN_NOBIND true
    atuin init fish | source

    # bind to ctrl-r in normal and insert mode, add any other bindings you want here too
    bind \cr _atuin_search
    bind -M insert \cr _atuin_search
end

export QT_QPA_PLATFORMTHEME="qt6ct"

if test -d $HOME/.cfg
    alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
end
