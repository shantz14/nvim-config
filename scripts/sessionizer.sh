fzfcd() {
    selected_dir=$(find ~/ ~/Dev -mindepth 1 -maxdepth 1 -type d | fzf)

    local name=${selected_dir##*/}
    local session_name=$(basename "$name" | tr . _)

    if tmux has-session -t "$session_name" 2>/dev/null; then
        tmux switch-client -t "$session_name"
    else
        tmux new-session -s "$session_name" -c "$selected_dir" -d
        tmux switch-client -t "$session_name"
    fi
}
