#!/usr/bin/env bash

# Turn the status bar on
tmux set-option -g status off

# Wait for a while
status_delay=$(tmux show-option -gqv "@status_autohide_delay")
status_delay=${status_delay:-3}
sleep $status_delay

# Turn the status bar off
tmux set-option -g status off
