#!/bin/bash --login
BASE_DIR="/Users/$USER/Projects/booklog"

JEKYLL_SERVE_CMD="$BASE_DIR/jekyll serve --watch --drafts --port 4000"

# Stop jekyll
ps ax | grep "$JEKYLL_SERVE_CMD" | grep -v grep | awk '{ print $1 }'

# Rebuild
$BASE_DIR/jekyll build

# Start jekyll
$JEKYLL_SERVE_CMD
