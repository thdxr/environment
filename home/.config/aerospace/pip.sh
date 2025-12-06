#!/usr/bin/env sh

ws=${1:-$AEROSPACE_FOCUSED_WORKSPACE}

IFS=$'\n' all_wins=$(aerospace list-windows --all --format '%{window-id}|%{app-name}|%{window-title}|%{monitor-id}|%{workspace}')
IFS=$'\n' all_ws=$(aerospace list-workspaces --all --format '%{workspace}|%{monitor-id}')

chrome_pip=$(printf '%s\n' $all_wins | rg 'Picture in Picture')
target_mon=$(printf '%s\n' $all_ws | rg "^$ws\|" | cut -d'|' -f2 | xargs)

move_win() {
  local win="$1"

  [[ -n $win ]] || return 0

  local win_mon=$(printf $win | cut -d'|' -f4 | xargs)
  local win_id=$(printf $win | cut -d'|' -f1 | xargs)
  local win_app=$(printf $win | cut -d'|' -f2 | xargs)
  local win_ws=$(printf $win | cut -d'|' -f5 | xargs)

  [[ $target_mon != $win_mon ]] && return 0
  [[ $ws == $win_ws ]] && return 0

  aerospace move-node-to-workspace --window-id $win_id $ws
}

move_win "${chrome_pip}"
