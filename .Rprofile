file.edit(".Rprofile")
# Set your email and name for Git
email <- "eric108048137@gmail.com"
name <- "Eric-econ104"

# Run the git config commands
system2("git", args = c("config", "--global", "user.email", email))
system2("git", args = c("config", "--global", "user.name", name))




library(tidyverse)
library(showtext)
library(sysfonts)

sysfonts::font_add_google('Noto Sans TC')
showtext_auto()

theme_set(
  theme(
    text = element_text(family = "Noto Sans TC")
  ) + 
    theme_classic()
)
