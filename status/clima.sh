# Requires https://github.com/vascomfnunes/tmux-clima
show_clima() {
  local index icon color text background module

  tmux_batch_setup_status_module "clima"
  run_tmux_batch_commands

  index=$1
  icon="$(get_tmux_batch_option "@catppuccin_clima_icon" "")"
  color="$(get_tmux_batch_option "@catppuccin_clima_color" "$thm_yellow")"
  text="$(get_tmux_batch_option "@catppuccin_clima_text" "#{clima}")"
  background=$(get_tmux_batch_option "@catppuccin_clima_background" "$thm_gray")

  module=$(build_status_module "$index" "$icon" "$color" "$text" "$background")

  echo "$module"
}
