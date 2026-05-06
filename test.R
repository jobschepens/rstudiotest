## install if needed (do this exactly once):
## install.packages("usethis")
library(usethis)
use_git_config(user.name = "Job Schepens", user.email = "job.schepens@uni-koeln.de")
usethis::create_github_token()
gitcreds::gitcreds_set()

library(tidyverse)
library(lme4)