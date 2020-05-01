if ! [ -x "$(command -v brew)" ] 
then
  echo "Installing Homebrew..." >&2
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew already installed, continuing..."
fi

cat inventory/standard-cask.txt | xargs brew cask install 
