SRC_DIR=`dirname $0`
echo ${SRC_DIR}

# ubuntu用.profileをコピーする
cp -iv "${SRC_DIR}"/.profile-ubuntu "${HOME}"/.profile

# .vimrcをコピー
cp -iv "${SRC_DIR}"/.vimrc "${HOME}"
