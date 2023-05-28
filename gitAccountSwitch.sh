
#! /bin/bash

git config --global --unset user.name
git config --global --unset user.email
git config --global --unset user.signingkey
git config --global --unset commit.gpgsign

if [ "$1" == "user1" ]; then
        git config --global user.name user1
        git config --global user.email user1@example.com
        git config --global user.signingkey 7A0E8A75940088E3E85369126BDD3963F48DFE70
        git config --global commit.gpgsign true
elif [ "$1" == "user2" ]; then
        git config --global user.nama user2
        git config --global user.email user2@myexample.com
        git config --global user.signingkey A0E36320CB0BC6576B4467630AF239A62CD8A5CA
        git config --global commit.gpgsign true
else
        echo "invalid arguments!"
        exit
fi

git config --list
