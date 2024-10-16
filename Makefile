all: link-clang-format

link-clang-format:
	@echo "Installing .clang-format"
	@./install.sh

clean:
	rm $HOME/.clang-format
