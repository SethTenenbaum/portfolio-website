#!/bin/bash

# Build the Angular project
ng build --configuration production --output-path docs --base-href /portfolio-website/

# Move the contents of the 'browser' directory to 'docs'
mv docs/browser/* docs/

# Remove the 'browser' directory
rm -r docs/browser

# Copy 'index.html' to '404.html'
cp docs/index.html docs/404.html

# Deploy to GitHub Pages
echo "do a git commit now"
