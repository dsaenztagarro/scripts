#!/bin/bash --login
PROJECT_NAME="booklog"
JEKYLL_PORT=4000

BASE_DIR="/Users/$USER/Projects/$PROJECT_NAME"
JEKYLL_SERVE_CMD="jekyll serve --watch --drafts --port $JEKYLL_PORT"

# Stop jekyll
ps ax | grep "$JEKYLL_SERVE_CMD" | grep -v grep | awk '{ print $1 }' | xargs kill -9

# Start jekyll
cd $BASE_DIR
eval $JEKYLL_SERVE_CMD
