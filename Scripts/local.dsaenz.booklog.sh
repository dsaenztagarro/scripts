#!/bin/bash --login
cd /Users/$USER/Projects/booklog
jekyll build
jekyll serve --port 4000