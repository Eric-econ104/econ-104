library(tidyverse)

# Load the data
df <- read_csv("reshaped_data.csv")

# Check structure
glimpse(df)

# Handle missing values by replacing with 0
df <- df |> 
  mutate(Travel_Count = replace_na(Travel_Count, 0))

# Summarize total travelers per year
summary_by_year <- df |> 
  group_by(Year) |> 
  summarise(Total_Travelers = sum(Travel_Count)) |> 
  arrange(Year)

# Summarize travelers by region and year
summary_by_region <- df |> 
  group_by(Year, 首站抵達地) |> 
  summarise(Total_Travelers = sum(Travel_Count), .groups = "drop") |> 
  arrange(Year, desc(Total_Travelers))

# Extract country names from 細分 (if format includes English names after a space)
df <- df |> 
  separate(細分, into = c("細分_中文", "Country"), sep = " ", fill = "right")

# View results
print(summary_by_year)
print(summary_by_region)
head(df)
