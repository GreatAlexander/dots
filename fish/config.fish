if status is-interactive
    # Commands to run in interactive sessions can go here
    thefuck --alias | source
    starship init fish | source
end