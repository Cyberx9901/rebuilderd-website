#!/bin/sh

SESSION=reprowebsite

tmux new-session -d -s ${SESSION}

# Setup panes
tmux new-window -t ${SESSION}:0 -n "${SESSION}"
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "make js-watcher" C-m
tmux select-pane -t 1
tmux send-keys "make sass-watcher" C-m
tmux split-window -v
tmux select-pane -t 2
tmux send-keys "caddy" C-m


# Set default window
tmux select-window -t $SESSION:1

# Attach to session
tmux -2 attach-session -t $SESSION

