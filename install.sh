sudo chown -R $(whoami):admin /usr/local
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# So we use all of the packages we are about to install
echo "export PATH='/usr/local/bin:$PATH'\n" >> ~/.zshrc
source ~/.zshrc

brew install tig
brew install docker
brew install node
brew install python
brew install go

sudo easy_install pip

ln -sf zshrc  ~/.zshrc
mkdir -p ~/.dotfiles
ln -sf  env ~/.dotfiles/.env
ln -sf  aliases ~/.dotfiles/.aliases
ln -sf  git ~/.dotfiles/.git
