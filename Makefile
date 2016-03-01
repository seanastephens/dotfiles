dots=.vimrc .inputrc

default: ${dots}
	git pull
	cp ${dots} ~/
	vim +PluginInstall +qall
	cd ~/.vim/bundle/YouCompleteMe
	python install.py --clang-completer

