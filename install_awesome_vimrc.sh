#!/bin/sh
set -e

VIMDIR=${HOME}/.dotfiles/vim_runtime

cd ${HOME}/.dotfiles/vim_runtime

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
