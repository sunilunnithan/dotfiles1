fancy_echo() {
  printf "\n%b\n" "$1"
}

append_to_zshrc() {
  local text="$1" zshrc
  local skip_new_line="$2"

  if [[ -w "$HOME/.zshrc.local" ]]; then
    zshrc="$HOME/.zshrc.local"
  else
    zshrc="$HOME/.zshrc"
  fi

  if ! grep -Fqs "$text" "$zshrc"; then
    if (( skip_new_line )); then
      printf "%s\n" "$text" >> "$zshrc"
    else
      printf "\n%s\n" "$text" >> "$zshrc"
    fi
  fi
}

check_program(){
    $1
    if echo $? == 0;
    then echo "$1 Everything Ok.";
    else
    echo "Error with program installation $1";
    fi
}

### end common-components/shared-functions

#!/usr/bin/env bash
### end common-components/bash-shebang


trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT

set -e
### end common-components/exit-trap


if ! grep -qiE 'wheezy|jessie|precise|trusty|xenial|bionic|focal|groovy' /etc/os-release; then
  fancy_echo "Sorry! we don't currently support that distro."
  exit 1
fi
### end linux-components/distro-check

fancy_echo "Updating system packages ..."
  if command -v aptitude >/dev/null; then
    fancy_echo "Using aptitude ..."
  else
    fancy_echo "Installing aptitude ..."
    sudo apt-get install -y aptitude
  fi

  sudo aptitude update
### end linux-components/debian-package-update


fancy_echo "Installing essential network & build tools"
  sudo aptitude install -y build-essential software-properties-common network-manager libnss3-tools jq xsel libssl-dev  net-tools apt-transport-https xclip

fancy_echo "Installing libraries for common gem dependencies ..."
  sudo aptitude install -y libxslt1-dev libcurl4-openssl-dev libksba8 libksba-dev libreadline-dev

fancy_echo "Installing Postgres, a good open source relational database ..."
  sudo aptitude install -y postgresql postgresql-server-dev-all

fancy_echo "Install golang"
  sudo aptitude install -y golang

fancy_echo "Installing Redis, a good key-value database ..."
  sudo aptitude install -y redis-server redis

fancy_echo "Installing ctags, to index files for vim tab completion of methods, classes, variables ..."
  sudo aptitude install -y exuberant-ctags

fancy_echo "Installing vim ..."
  sudo aptitude install -y vim 

fancy_echo "Installing nvim ..."
  sudo add-apt-repository -y ppa:neovim-ppa/unstable
  sudo apt-get -y install neovim

fancy_echo "Installing tmux, to save project state and switch between projects ..."
  sudo aptitude install -y tmux

fancy_echo "Installing watch, to execute a program periodically and show the output ..."
  sudo aptitude install -y watch

fancy_echo "Installing fzf ..."
  sudo aptitude install -y fzf

fancy_echo "Installing curl ..."
  sudo aptitude install -y curl

fancy_echo "Installing zsh ..."
  sudo aptitude install -y zsh

fancy_echo "Install python utilities..."
  sudo aptitude install -y python
  sudo aptitude install -y python3-distutils

fancy_echo "Install sqlite ..."
  sudo apt install sqlite3:
  
fancy_echo "Installing modern unix toosl"
  sudo aptitude install -y fd-find ripgrep htop colordiff bat ncdu silversearcher-ag


fancy_echo "Install pip"
  sudo apt install python3-pip python3-venv

fancy_echo "Installing pipx"
  python3 -m pip install --user pipx
  python3 -m pipx ensurepath
  python3 -m pip install --user -U pipx


fancy_echo "Install python tools using pipx"
  pipx install httpie  --force 
  pipx install pgcli  --force 
  pipx install glances --force

fancy_echo "Installing nodejs tools"
  curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  sudo npm install -g npm
  sudo npm install -g yarn
  sudo npm install -g tldr gtop 
  

fancy_echo "Install languauge server"
  sudo npm install -g @angular/language-server
  sudo yarn global add ansible-language-server
  sudo npm install -g bash-language-server
  sudo npm install -g vscode-langservers-extracted
  sudo npm install -g dockerfile-language-server-nodejs
  sudo npm install -g sql-language-server
  sudo npm install -g typescript typescript-language-server vim-language-server
  sudo yarn global add yaml-language-server

  GO111MODULE=on go get golang.org/x/tools/gopls@latest
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  sudo apt-get update && sudo apt-get install terraform-ls

fancy_echo "Install Rust tools"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  . $HOME/.cargo/env
  rustup update stable

fancy_echo "Install modern linux tools"
  cd /tmp
  cargo install exa lsd git-delta du-dust broot sd bottom
  sudo snap install duf-utility procs httpie
  sudo apt install -y fd-find
  curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
  sudo dpkg -i ripgrep_12.1.1_amd64.deb
  go get -u github.com/cheat/cheat/cmd/cheat
  sudo npm install -g tldr gtop

  wget https://github.com/sharkdp/hyperfine/releases/download/v1.11.0/hyperfine_1.11.0_amd64.deb
  sudo dpkg -i hyperfine_1.11.0_amd64.deb
 
  echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
  wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
  sudo apt update
  sudo apt install gping

  curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh
  curl -sS https://webinstall.dev/zoxide | bash

fancy_echo "Setup dotfiles ..."
  make install

fancy_echo "Changing your shell to zsh ..."
  chsh -s $(which zsh)

fancy_echo "Installing starfish prompt ..."
  sh -c "$(curl -fsSL https://starship.rs/install.sh)"

fancy_echo "install rust based tools"
  sudo snap install duf-utility

fancy_echo "Installing dotnet sdk & tools"
  sudo snap install dotnet-sdk --classic
  sudo snap install powershell --classic
  sudo dotnet tool install --global csharp-ls 
