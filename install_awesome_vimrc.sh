#!/bin/sh
set -e

bk_file() {
    if [ -f "$@" ]; then
        cp "$@" "$@.bk"
    fi
}
VIMDIR=${HOME}/.dotfiles/vim_runtime

if [ -f ${HOME}/.flake8 ]; then
    bk_file ${HOME}/.flake8
    rm ${HOME}/.flake8
fi
ln -s ${HOME}/.dotfiles/vim_runtime/resources/flake8 ${HOME}/.flake8

mkdir -p ${HOME}/.vim/after/ftplugin
mkdir -p ${HOME}/.vim/after/syntax
cat ${VIMDIR}/resources/vim-yaml/after/ftplugin/yaml.vim > ${HOME}/.vim/after/ftplugin/yaml.vim
cat ${VIMDIR}/resources/vim-yaml/after/syntax/yaml.vim > ${HOME}/.vim/after/syntax/yaml.vim

cd ${VIMDIR}

echo "set runtimepath+=${VIMDIR}
source ${VIMDIR}/vimrcs/basic.vim
source ${VIMDIR}/vimrcs/filetypes.vim
source ${VIMDIR}/vimrcs/plugins_config.vim
source ${VIMDIR}/vimrcs/extended.vim
try
source ${VIMDIR}/my_configs.vim
catch
endtry" > ${HOME}/.vimrc
echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
