
git config --global user.name "Job Schepens"
git config --global user.email "job.schepens@uni-koeln.de"

# winget install --id GitHub.cli
# gh repo create rstudiotest2 --private --source=. --push
# curl -u "jobschepens" -d "{\"name\":\"rstudiotest2\",\"private\":true}" https://api.github.com/user/repos
git status
git add
git commit -m "Create initial structure for a Guacamole recipe"
git diff
ls -al ~/.ssh
git config --global --edit
ls -al ~/.ssh
ssh-keygen -t ed25519 -C "job.schepens@uni-koeln.de"
git remote -v
git branch -m master main
git push -u origin main

