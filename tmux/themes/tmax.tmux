#!/usr/bin/env bash
#===============================================================================
#   Custom Theme by Max van Essen
#   ----
#===============================================================================

# $1: option
# $2: default value
tmux_get() {
    local value="$(tmux show -gqv "$1")"
    [ -n "$value" ] && echo "$value" || echo "$2"
}

# $1: option
# $2: value
tmux_set() {
    tmux set-option -gq "$1" "$2"
}

G04=#262626 #235
G10=#626262 #241
G12=#767676 #243

FG="$G10"
BG="$G04"

user=$(whoami)


# Status options
tmux_set status-interval 1
tmux_set status on

# loud or quiet?
tmux_set visual-activity off
tmux_set visual-bell off
tmux_set visual-silence off
tmux_set monitor-activity off
tmux_set bell-action none

# fix titles
tmux_set set-titles on
tmux_set set-titles-string '#T'

#  modes
tmux_set clock-mode-colour colour5

# panes
tmux_set pane-border-style 'fg=colour237 bg=colour0'
# tmux_set pane-active-border-style 'bg=colour0 fg=colour249'
tmux_set pane-active-border-style "fg=$TC,bg=$BG"

# Status (bar)
tmux_set status-interval 1
tmux_set status-bar on
tmux_set status-fg "$FG"
tmux_set status-bg "$BG"


## Status Left
LS="#[fg=colour198]: $user@#S : "

tmux_set status-left "$LS"
tmux_set status-left-bg "$BG"
tmux_set status-left-fg "$G12"
tmux_set status-left-length 150

tmux_set window-status-current-style 'fg=colour1 bg=colour0 bold'
tmux_set window-status-current-format ' #I #[fg=colour7]#W#[fg=colour8]#F '

tmux_set window-status-style 'fg=colour1 bg=colour0 dim'
tmux_set window-status-format ' #I #[fg=colour250]#W#[fg=colour244]#F '

tmux_set window-status-bell-style 'fg=colour255 bg=colour1 bold'

# Message
tmux_set message-style "fg=$TC,bg=$BG"

# Command message
tmux_set message-command-style "fg=$TC,bg=$BG"

# Copy mode highlight
tmux_set mode-style "bg=$TC,fg=$FG"


#------------ OLD ---------------

# statusbar
# tmux_set status-position bottom
# tmux_set status-justify left
# tmux_set status-style 'bg=colour0 fg=colour4'

# tmux_set status-right '#[fg=colour250,bg=colour0] %d/%m #[fg=colour250,bg=colour0] %H:%M:%S '
# tmux_set status-right-length 70
# tmux_set status-left-length 85
