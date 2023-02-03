#!/usr/bin/env bash

status_delay=$(tmux show-option -gqv "@status_autohide_delay")
status_delay=${status_delay:-3}

sleep $status_delay
tmux set-option -g status off
