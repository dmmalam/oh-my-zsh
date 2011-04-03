echo "Uninstalling Oh My Zsh"

echo "Removing ~/.oh-my-zsh"
if [[ -d ~/.zsh ]]
then
  rm -rf ~/.zsh
fi


if [ -d ~/.zsh.pre-oh-my-zsh ]
then
	echo "Found ~/.zsh.pre-oh-my-zsh folder. Restroing..."
		mv  ~/.zsh.pre-oh-my-zsh ~/.zsh	
fi

rm ~/.zshrc;

echo "Looking for an existing zsh config..."
if [ -f ~/.zshrc.pre-oh-my-zsh ] || [ -h ~/.zshrc.pre-oh-my-zsh ]
then
  echo "Found ~/.zshrc.pre-oh-my-zsh. Restoring...";
  cp ~/.zshrc.pre-oh-my-zsh ~/.zshrc;
  source ~/.zshrc;
else
  echo "Switching back to bash"
  chsh -s /bin/bash
  source /etc/profile
fi

echo "Oh My Zsh has been uninstalled."