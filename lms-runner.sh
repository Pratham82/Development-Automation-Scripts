# !/bin/bash


# Start your tmux session
tmux new-session -d -s lms-runner

# Create a new window
tmux send-keys -t lms-runner 'tmux new-window -n lms' ENTER

# Pass commands to the 1st pane
tmux send-keys -t lms-runner "tmux send-keys -t lms 'tmux split-window && fnm use 12 && cd *client && npm start' ENTER" ENTER

# Enter in the lms-runner
tmux send-keys -t lms-runner ENTER

# Send commands to 2nd pane
tmux send-keys -t lms-runner "tmux send-keys -t lms 'fnm use 12 && cd *server && npm start' ENTER" ENTER

# Attach to lms-runner session
tmux attach -t lms-runner

