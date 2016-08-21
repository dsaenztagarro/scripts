#!/bin/bash --login
cd /Users/$USER/Projects/booklog
jekyll build
jekyll serve --watch --drafts --port 4000