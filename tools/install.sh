echo "Installing Oh My Zsh..."

if [ -d ~/.zsh ]
then
  echo "\033[0;33mYou already have Oh My Zsh installed.\033[0m You'll need to remove ~/.zsh/oh-my-zsh if you want to install"
  exit
fi

mkdir ~/.zsh

echo "\033[0;34mCloning Oh My Zsh...\033[0m"
/usr/bin/env git clone git://github.com/dmmalam/oh-my-zsh.git ~/.zsh/oh-my-zsh

echo "\033[0;34mLooking for an existing zsh config...\033[0m"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "\033[0;33mFound ~/.zshrc.\033[0m \033[0;32]Backing up to ~/.zshrc.pre-oh-my-zsh\033[0m";
  mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
fi

echo "\033[0;34mLinking Oh My Zsh profile file... ~/.zshrc\033[0m"
ln -s ~/.zsh/oh-my-zsh/profile/zshrc.zsh ~/.zshrc

echo "Creating user specific profile..."
echo "#User Zsh Profile" > ~/.zsh/zshrc.zsh

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"
echo "export PATH=$PATH" >> ~/.zsh/zshrc.zsh

echo "Changing default shell to zsh..."

echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`


echo "\033[0;32m"'         __                                     __   '"\033[0m"
echo "\033[0;32m"'  ____  / /_     ____ ___  __  __   ____  _____/ /_  '"\033[0m"
echo "\033[0;32m"' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '"\033[0m"
echo "\033[0;32m"'/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '"\033[0m"
echo "\033[0;32m"'\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '"\033[0m"
echo "\033[0;32m"'                        /____/                       '"\033[0m"

echo "\n\n \033[0;32m....is now installed.\033[0m"
/usr/bin/env zsh
source ~/.zshrc
