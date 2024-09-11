show_application() {
  local index icon color text background module

  tmux_batch_setup_status_module "application"
  run_tmux_batch_commands

  index=$1
  icon=$(get_tmux_batch_option "@catppuccin_application_icon" "")
  color=$(get_tmux_batch_option "@catppuccin_application_color" "$thm_pink")
  text=$(get_tmux_batch_option "@catppuccin_application_text" "#{pane_current_command}")
  background=$(get_tmux_batch_option "@catppuccin_application_background" "$thm_gray")

  module=$(build_status_module "$index" "$icon" "$color" "$text" "$background")

  echo "$module"
}
