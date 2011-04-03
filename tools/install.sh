echo "Installing Oh My Zsh..."

if [ -d ~/.zsh ]
then
  echo "You already have Oh My Zsh installed. You'll need to remove ~/.zsh/.oh-my-zsh!"
  exit
fi

mkdir ~/.zsh

echo "Cloning Oh My Zsh..."
/usr/bin/env git clone git://github.com/dmmalam/oh-my-zsh.git ~/.zsh/oh-my-zsh

echo "Looking for an existing zsh config..."
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "Found ~/.zshrc. Backing up to ~/.zshrc.pre-oh-my-zsh"
  mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
fi

echo "Linking Oh My Zsh profile file..."
ln -s ~/.zsh/oh-my-zsh/profile/zshrc.zsh ~/.zshrc

echo "Creating user specific profile..."
echo "#User Zsh Profile" > ~/.zsh/zshrc.zsh

echo "Appending current PATH to ~/.zsh/zshrc for you."
echo "export PATH=$PATH" >> ~/.zsh/zshrc

echo "Changing default shell to zsh..."

if [-f /opt/local/bin/zsh]
then
    echo "Using MacPorts Zsh..."
    chsh -s /opt/local/bin/zsh
else
    echo "Using OSX Zsh..."
    chsh -s /bin/zsh
fi


echo '         __                                     __  '
echo '  ____  / /_     ____ ___  __  __   ____  _____/ /_ '
echo ' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '
echo '/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '
echo '\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '
echo '                        /____/'

echo "\n\n ....is now installed!"
/usr/bin/env zsh
source ~/.zshrc
