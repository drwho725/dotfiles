function tnew
    tmux new-session -As (basename $PWD)
end
