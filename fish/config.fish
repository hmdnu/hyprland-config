if status is-interactive
    # Commands to run in interactive sessions can go here
end

if uwsm check may-start && uwsm select; then
	exec uwsm start default
end

set fish_greeting ""
set -x XDG_CURRENT_DESKTOP Hyprland
set -x XDG_SESSION_TYPE wayland
set -x XDG_SESSION_DESKTOP Hyprland

alias sail="./vendor/bin/sail"
alias zed="zeditor"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
