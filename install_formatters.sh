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
echo "Glaive codefmt black_executable=\""${HOME}"/.vim/code-formatters/venv/bin/black\"" >> ~/.vim/vimrc/plugins.vim
echo "Glaive codefmt js_beautify_executable=\""${HOME}"/.vim/code-formatters/node_modules/.bin/js-beautify\"" >> ~/.vim/vimrc/plugins.vim
echo "Glaive codefmt isort_executable=\""${HOME}"/.vim/code-formatters/venv/bin/isort\"" >> ~/.vim/vimrc/plugins.vim
echo "Glaive codefmt prettier_executable=\""${HOME}"/.vim/code-formatters/node_modules/.bin/prettier\"" >> ~/.vim/vimrc/plugins.vim
