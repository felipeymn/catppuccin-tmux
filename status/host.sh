show_host() {
  local index icon color text background module

  tmux_batch_setup_status_module "host"
  run_tmux_batch_commands

  index=$1
  icon=$(get_tmux_batch_option "@catppuccin_host_icon" "󰒋")
  color=$(get_tmux_batch_option "@catppuccin_host_color" "$thm_magenta")
  text=$(get_tmux_batch_option "@catppuccin_host_text" "#H")
  background=$(get_tmux_batch_option "@catppuccin_host_background" "$thm_gray")

  module=$(build_status_module "$index" "$icon" "$color" "$text" "$background")

  echo "$module"
}
