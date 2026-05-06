install.packages("chattr")
install.packages("ellmer") # Needed for the Gemini backend
library(ellmer)
library(chattr)
chat <- ellmer::chat_google_gemini(model = "gemini-1.5-flash")
chattr_use(chat)

# Launch the UI
chattr_app()
