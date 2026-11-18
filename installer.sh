#!/usr/bin/env bash
set -eu pipefail

while [[ "$#" -gt 0 ]]
do
  case "$1" in
    -o|--overwrite)
      [[ -z "$mode" ]] && mode=o || exit
      shift 1
      ;;
    -p|--preserve)
      [[ -z "$mode" ]] && mode=p || exit
      shift 1
      ;;
    *)
      shift 1
      ;;
  esac
done

repo="$(dirname "${BASH_SOURCE[0]}")"

files=(
  "$repo/doc/fonts.conf.md"
  "$repo/src/fonts.conf"
)
dests=(
  "$repo/fonts.conf.md"
  "$repo/fonts.conf"
)

[[ "${#files[@]}" == "${#dests[@]}" ]] && n="${#files[@]}" || exit

[[ -z "${mode:-}" ]] && mode=o || exit

for (( i=0; i<"$n"; i++ ))
do
  if [[ "$mode" == o ]]
  then
    cp -r "${files[i]}" "${dests[i]}"
  elif [[ "$mode" == p ]]
  then
    [[ ! -f "${dests[i]}" ]] && cp -r "${files[i]}" "${dests[i]}"
  fi
done

fc-cache -vf

# CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY.
