## install if needed (do this exactly once):
## install.packages("usethis")


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



