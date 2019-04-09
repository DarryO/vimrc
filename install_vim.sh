#! /bin/bash
# --------------------------------------------------------------------------------
#     File Name           :     install_vim.sh
#     Created By          :     lihao
#     Description         :
# --------------------------------------------------------------------------------

git clone https://github.com/vim/vim.git ~/.vim

cd ~/.vim

./configure \
    --enable-perlinterp \
    --enable-multibyte \
    --enable-pythoninterp \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    --enable-python3interp \
    --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu \
    --enable-rubyinterp \
    --enable-cscope  \
    --with-features=huge \
    --prefix=/path/to/install

# make VIMRUNTIMEDIR=/usr/share/vim/vim80
