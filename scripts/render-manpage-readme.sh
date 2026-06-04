#!/usr/bin/env sh
set -eu

manpage="${MANPAGE:-wesley.1}"
width="${MANWIDTH:-80}"
placeholder='<!-- MANPAGE:PLACEHOLDER -->'

if [ "$#" -eq 0 ]; then
  set -- README.md
fi

rendered_tmp="$(mktemp)"
trap 'rm -f "$rendered_tmp"' EXIT HUP INT TERM

MANWIDTH="$width" man "./$manpage" | col -b | sed 's/[[:space:]]*$//' > "$rendered_tmp"

for file do
  if ! grep -qF "$placeholder" "$file"; then
    echo "missing MANPAGE:PLACEHOLDER in $file" >&2
    exit 1
  fi

  tmp="$(mktemp)"
  awk -v rendered_file="$rendered_tmp" -v placeholder="$placeholder" '
    index($0, placeholder) {
      while ((getline line < rendered_file) > 0) {
        print line
      }
      close(rendered_file)
      next
    }
    { print }
  ' "$file" > "$tmp"
  mv "$tmp" "$file"
done
