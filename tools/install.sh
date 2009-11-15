if [ -d ~/.oh-my-zsh ]
then
  echo "You already have Oh My Zsh installed. You'll need to remove ~/.oh-my-zsh if you want to install"
  exit
fi

if [ -d ~/.zsh ]
then
  echo "You already have a .zsh folder. Backing up to ~/.zsh.pre-oh-my-zsh"
	if [ -d ~/.zsh.pre-oh-my-zsh ]
	then
		echo "You already have a ~/.zsh.pre-oh-my-zsh folder. Please manually delete or move"
		exit
	fi

  mv ~/.zsh ~/.zsh.pre-oh-my-zsh 
 exit
else
	mkdir ~/.zsh
fi

echo "Cloning Oh My Zsh..."
/usr/bin/env git clone git://github.com/dmmalam/oh-my-zsh.git ~/.oh-my-zsh

echo "Looking for an existing zsh config..."
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "Found ~/.zshrc. Backing up to ~/.zshrc.pre-oh-my-zsh"
  mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
fi

ln -s ~/.zsh/.oh-my-zsh/profile/.zshrc ~/.zshrc

echo "Copying your current PATH and adding it to the end of ~/.zshrc for you."
echo "export PATH=$PATH" >> ~/.zsh/.zshrc

echo "Time to change your default shell to zsh!"
chsh -s /bin/zsh

echo "Hooray! Oh My Zsh has been installed."
/bin/zsh
source ~/.zshrc
