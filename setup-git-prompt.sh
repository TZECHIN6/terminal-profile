#!/bin/bash

echo "[STEP 1] Check does git-prompt.sh exist"
if [ -f ~/.git-prompt.sh ]; then
    echo ".git-prompt.sh is found"
    ls -al $HOME | grep .git
else
    echo "Cannot find .git-prompt.sh under $HOME"
    echo "Start downloading ..."
    wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
    ls -al $HOME | grep .git
    echo "Done downloading"
fi

echo "[STEP 2] Configure git-prompt setting in bashrc"
cat git-prompt.conf >> $HOME/.bashrc
echo "Done configure"
