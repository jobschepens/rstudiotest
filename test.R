## install if needed (do this exactly once):
## install.packages("usethis")

git config --global user.name "Job Schepens"
git config --global user.email "job.schepens@uni-koeln.de"

library(usethis)
use_git_config(user.name = "Job Schepens", user.email = "job.schepens@uni-koeln.de")
usethis::create_github_token()
gitcreds::gitcreds_set()

install.packages("chattr")
install.packages("ellmer") # Needed for the Gemini backend
library(ellmer)
library(chattr)

# Connect Gemini
chat <- ellmer::chat_google_gemini(model = "gemini-1.5-flash")
chattr_use(chat)

# Launch the UI
chattr_app()



# winget install --id GitHub.cli
# gh repo create rstudiotest2 --private --source=. --push
# curl -u "jobschepens" -d "{\"name\":\"rstudiotest2\",\"private\":true}" https://api.github.com/user/repos