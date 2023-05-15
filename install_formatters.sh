#!/usr/bin/env bash

cp ~/.vim/.vimrc ~/

# install code formatters
mkdir -p ~/.vim/code-formatters/
cd ~/.vim/code-formatters
python -m venv venv
source venv/bin/activate
pip install black isort
deactivate
npm install prettier js-beautify
