git config --global user.name lbbxsxlz
git config --global user.email lbbxsxlz@gmail.com
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub

git remote -v
git archive --output libspdm.tar.gz main
git archive --output mbedtls.tar.gz HEAD

git log --oneline | wc -l
git log --pretty='%aN' | sort -u | wc -l

git push --set-upstream origin $branch_name
git branch -d $branch_name

git checkout $branch
git checkout $file
git reset --hard HEAD/$commitID

git clone -b 2.3.1 https://github.com/DMTF/libspdm.git

git diff > code.patch
git apply code.patch

git commit -m "commit message"
git commit --amend
