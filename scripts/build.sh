#!/bin/bash

echo -n "Doing PostCSS stuff..."
postcss --use postcss-cssnext --local-plugins -d lib/ src/*.css
echo "done"

echo -n "Doing Babel stuff....."
babel src/script.js -o lib/script.js --presets es2015 --no-babelrc --minified
echo "done"
