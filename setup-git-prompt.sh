#!/bin/bash

echo "Check does git-prompt.sh exist"
if [ -f ~/.git-prompt.sh ]; then
    ls -al $HOME | grep .git
    echo ".git-prompt.sh is found"
else
    echo "Cannot find .git-prompt.sh under $HOME"
    echo "Start downloading ..."
    wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
    ls -al $HOME | grep .git
    echo "Done downloading"
fi

echo "Configure git-prompt setting in bashrc"
#cat .git-prompt.conf >> test.txt