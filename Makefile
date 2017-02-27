dots=.vimrc .inputrc .editorconfig

default: ${dots}
	git pull
	cp ${dots} ~/
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || true
	vim +PluginInstall +qall
