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

# Install grammar checking tool
LANGUAGE_TOOL_VERSION=5.9
wget https://languagetool.org/download/LanguageTool-"${LANGUAGE_TOOL_VERSION}".zip
unzip LanguageTool-"${LANGUAGE_TOOL_VERSION}".zip
mv LanguageTool-"${LANGUAGE_TOOL_VERSION}" language-tool
rm LanguageTool-"${LANGUAGE_TOOL_VERSION}".zip
