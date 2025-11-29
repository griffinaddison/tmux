tmux bind-key -n C-h if-shell -F '#{@pane-is-vim}' 'send-keys C-h' 'if-shell -F "#{pane_at_left}" "select-pane -L" "select-window -t :-"'
tmux bind-key -n C-l if-shell -F '#{@pane-is-vim}' 'send-keys C-l' 'if-shell -F "#{pane_at_right}" "select-pane -R" "select-window -t :+"'
tmux bind-key -T copy-mode-vi C-h if-shell -F '#{pane_at_left}' 'select-pane -L' 'select-window -t :-'
tmux bind-key -T copy-mode-vi C-l if-shell -F '#{pane_at_right}' 'select-pane -R' 'select-window -t :+'
