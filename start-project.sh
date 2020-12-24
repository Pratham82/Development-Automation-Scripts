#!/bin/bash

echo "Start new github Project"
read -p "Enter your project name: " name
gh repo create $name
gh repo clone "pratham82/${name}"
cd $name
touch README.md
echo '# ' ${name} > README.md 
git add .
git commit -m 'Initial commit'
git push 
nvim
