# Requires https://github.com/xamut/tmux-weather.

show_weather() {
  local index icon color text background module

  tmux_batch_setup_status_module "weather"
  run_tmux_batch_commands

  index=$1
  icon="$(get_tmux_batch_option "@catppuccin_weather_icon" "")"
  color="$(get_tmux_batch_option "@catppuccin_weather_color" "$thm_yellow")"
  text="$(get_tmux_batch_option "@catppuccin_weather_text" "#{weather}")"
  background=$(get_tmux_batch_option "@catppuccin_weather_background" "$thm_gray")

  module=$(build_status_module "$index" "$icon" "$color" "$text" "$background")

  echo "$module"
}
