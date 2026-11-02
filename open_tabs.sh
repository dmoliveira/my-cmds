#!/usr/bin/env bash
#
# Open multiple URLs in a new Chrome window
# Compatible with macOS and Ubuntu/Linux
#
# Usage:
#   ./open_tabs.sh [path_to_sites.txt ...]

# Path to file containing list of URLs (one per line)
if [[ $# -eq 0 ]]; then
  set -- ./sites.txt
fi

# --- Validate file ---
for URL_FILE in "$@"; do
if [[ ! -f "$URL_FILE" ]]; then
  echo "❌ URL list file not found: $URL_FILE"
  echo "Create one with each site on a new line, e.g.:"
  echo "https://google.com"
  echo "https://github.com"
  exit 1
fi
done

# --- Read URLs from file ---
URLS=()
for URL_FILE in "$@"; do
  while IFS= read -r line || [[ -n "$line" ]]; do
    [[ -z "$line" || "$line" =~ ^# || "$line" =~ ^\[.*\]$ ]] && continue
    URLS+=("$line")
  done < "$URL_FILE"
done

if [[ ${#URLS[@]} -eq 0 ]]; then
  echo "⚠️  No URLs found in the supplied lists"
  exit 0
fi

# --- Detect OS and Chrome path ---
open_chrome() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    if [[ -x "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" ]]; then
      /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --new-window "${URLS[@]}"
    else
      echo "❌ Google Chrome not found on macOS. Please install it or adjust the path."
      exit 1
    fi
  else
    # Ubuntu / Linux
    if command -v google-chrome >/dev/null 2>&1; then
      google-chrome --new-window "${URLS[@]}" &
    elif command -v google-chrome-stable >/dev/null 2>&1; then
      google-chrome-stable --new-window "${URLS[@]}" &
    elif command -v chromium-browser >/dev/null 2>&1; then
      chromium-browser --new-window "${URLS[@]}" &
    else
      echo "❌ Chrome/Chromium not found on Linux. Install it with:"
      echo "sudo apt install google-chrome-stable"
      exit 1
    fi
  fi
}

# --- Run ---
open_chrome
echo "✅ Opened ${#URLS[@]} tabs"
