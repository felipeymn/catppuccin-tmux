show_session() {
  local index icon color text background module

  tmux_batch_setup_status_module "session"
  run_tmux_batch_commands

  index=$1
  icon=$(get_tmux_batch_option "@catppuccin_session_icon" "")
  color=$(get_tmux_batch_option "@catppuccin_session_color" "#{?client_prefix,$thm_red,$thm_green}")
  text=$(get_tmux_batch_option "@catppuccin_session_text" "#S")
  background=$(get_tmux_batch_option "@catppuccin_session_background" "$thm_gray")

  module=$(build_status_module "$index" "$icon" "$color" "$text" "$background")

  echo "$module"
}
