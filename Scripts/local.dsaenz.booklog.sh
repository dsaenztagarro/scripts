#!/bin/bash --login
cd /Users/$USER/Projects/booklog
jekyll build
jekyll serve --drafts --port 4000