git push --set-upstream origin $branch_name
git archive --output libspdm.tar.gz main
git archive --output mbedtls.tar.gz HEAD
git branch -d $branch_name
git remote -v
