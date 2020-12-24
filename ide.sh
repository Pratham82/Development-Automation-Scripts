#!/bin/bash

# Start your tmux session
tmux new-session -d -s dev

# Create new windows and edit their name
tmux send-keys -t dev 'tmux new-window -n nvim' ENTER
tmux send-keys -t dev 'tmux new-window -n server' ENTER

# Send the command to each window from window 0
tmux send-keys -t dev "tmux send-keys -t nvim nvim ENTER" ENTER
tmux send-keys -t dev "tmux send-keys -t server 'tmux split-window && ltp' ENTER" ENTER

# Start a new line on window 0
tmux send-keys -t dev ENTER

# Select the window 
tmux send-keys -t dev "tmux select-window -t server" ENTER

# Attach to the created session
tmux attach -t dev

