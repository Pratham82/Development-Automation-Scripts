#!/bin/bash
fnm use 12;
rm -rf ./lmsclient/node_modules && rm -rf ./lmsserver/node_modules 
# cd lmsclient/node_modules/quill-delta/dist/Delta.d.ts
# awk '!/fast-diff/' test.txt > temp && mv temp test.txt
# awk '!/fast-diff/' lmsclient/node_modules/quill-delta/dist/Delta.d.ts > temp && mv temp lmsclient/node_modules/quill-delta/dist/Delta.d.ts

cd lmsclient && npm install;
cd ..
cd lmsserver && npm install;
cd ..;
sed '/fast-diff/d'  ./lmsclient/node_modules/quill-delta/dist/Delta.d.ts > temp && mv temp  ./lmsclient/node_modules/quill-delta/dist/Delta.d.ts
sed -i '1 i\import * as diff from "fast-diff";\' ./lmsclient/node_modules/quill-delta/dist/Delta.d.ts
