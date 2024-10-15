if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH $PATH /home/alex/.local/bin
    thefuck --alias | source
    starship init fish | source
end