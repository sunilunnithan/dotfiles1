.PHONY: install macos ubuntu redhat brew brew-restore

# Run dotbot install script
install:
	./install


# Install extensions from vscode/extensions.txt
vscode-install:
	cat ${DOTFILES}/vscode/extensions.txt | xargs -L 1 code --install-extension

# Save all current extensions to vscode/extensions.txt
vscode-save:
	code --list-extensions > ${DOTFILES}/vscode/extensions.txt

# Save snapshot of all Homebrew packages to macos/Brewfile
brew:
	brew bundle dump -f --file=macos/Brewfile
	brew bundle --force cleanup --file=macos/Brewfile

# Restore Homebrew packages
brew-restore:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby
	brew update
	brew upgrade
	brew install mas
	brew bundle install --file=macos/Brewfile
	brew cleanup

# Set MacOS defaults
macos:
	./macos/set-defaults.sh

# Setup Ubundu
ubuntu:
	./ubuntu-setup.sh


# Setup RedHat
redhat:
	./redhat-setup.sh
