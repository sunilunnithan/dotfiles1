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
  sudo aptitude install -y build-essential software-properties-common network-manager libnss3-tools jq xsel libssl-dev  net-tools apt-transport-https

fancy_echo "Installing libraries for common gem dependencies ..."
  sudo aptitude install -y libxslt1-dev libcurl4-openssl-dev libksba8 libksba-dev libreadline-dev

fancy_echo "Installing Postgres, a good open source relational database ..."
  sudo aptitude install -y postgresql postgresql-server-dev-all

fancy_echo "Installing Redis, a good key-value database ..."
  sudo aptitude install -y redis-server redis

fancy_echo "Installing ctags, to index files for vim tab completion of methods, classes, variables ..."
  sudo aptitude install -y exuberant-ctags

fancy_echo "Installing vim ..."
  sudo aptitude install -y vim 

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

fancy_echo "Installing node, and web tools..."
  sudo aptitude install -y nodejs npm

fancy_echo "Install python utilities..."
  sudo aptitude install -y python
  sudo aptitude install -y python3-distutils

fancy_echo "Installing dotnet sdk & tools"
  sudo snap install dotnet-sdk --classic
  sudo snap install powershell --classic



### end linux-components/debian-derivative-packages

fancy_echo "Setup dotfiles ..."
  #make install

fancy_echo "Changing your shell to zsh ..."
  #chsh -s $(which zsh)
