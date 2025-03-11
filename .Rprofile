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
library(tidyverse)

# Load the dataset
df=read_csv("歷年中華民國國民出國目的地人數統計2002-2024.csv",col_types = cols(.default = "c"))

df_long <- df |> 
  tidyr::pivot_longer(
    cols = -c(首站抵達地, 細分),  # Keep the first two columns fixed
    names_to = "Year", 
    values_to = "Travel_Count"
  ) |> 
  mutate(
    Year = as.integer(Year),  # Convert year to integer
    Travel_Count = str_replace_all(Travel_Count, ",", "") |> as.numeric()  # Remove commas and convert to numeric
  )

# View the transformed data
print(df_long)
view(df_long)
write.csv(df_long, "reshaped_data.csv", row.names = FALSE)


