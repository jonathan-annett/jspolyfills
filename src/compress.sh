#!/bin/bash
echo "compressing polyfills.js to polyfills.min.js"
echo "/* jshint ignore:start */" > ./polyfills.min.js
uglifyjs polyfills.js -c >> ./polyfills.min.js
echo "/* jshint ignore:end */" >> ./polyfills.min.js
if [[ "$1" == "push" ]]; then
cd ..
git add src/polyfills.js src/polyfills.min.js
git commit -m "updated polyfills.js"
git push
fi
