# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
data <- read.csv('https://raw.githubusercontent.com/Eric-econ104/econ-104/main/reshaped_data.csv')

# Summarize "首站抵達地" (Destination Region)
destination_region_summary <- data %>%
  count(首站抵達地) %>%
  arrange(desc(n))



# Summarize "細分" (Country)
country_summary <- data %>%
  count(細分) %>%
  arrange(desc(n))



# Summarize "Year"
year_summary <- data %>%
  summarise(
    count = n(),
    mean = mean(Year, na.rm = TRUE),
    sd = sd(Year, na.rm = TRUE),
    min = min(Year, na.rm = TRUE),
    max = max(Year, na.rm = TRUE)
  )


# Summarize "Travel_Count"
travel_count_summary <- data %>%
  summarise(
    count = n(),
    mean = mean(Travel_Count, na.rm = TRUE),
    sd = sd(Travel_Count, na.rm = TRUE),
    min = min(Travel_Count, na.rm = TRUE),
    q1 = quantile(Travel_Count, 0.25, na.rm = TRUE),
    median = median(Travel_Count, na.rm = TRUE),
    q3 = quantile(Travel_Count, 0.75, na.rm = TRUE),
    max = max(Travel_Count, na.rm = TRUE)
  )


# Print summaries
print("Destination Region Summary:")
print(destination_region_summary)

print("Country Summary:")
print(country_summary)

print("Year Summary:")
print(year_summary)

print("Travel Count Summary:")
print(travel_count_summary)


# Plot the frequency of each destination region
ggplot(destination_region_summary, aes(x = reorder(首站抵達地, -n), y = n)) +
  geom_bar(stat = "identity") +
  xlab('Destination Region') +
  ylab('Frequency') +
  ggtitle('Frequency of Destination Regions') +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# Plot the frequency of each country
ggplot(country_summary, aes(x = reorder(細分, -n), y = n)) +
  geom_bar(stat = "identity") +
  xlab('Country') +
  ylab('Frequency') +
  ggtitle('Frequency of Countries') +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))


# Plot the trend of travel counts over the years
year_trend <- data %>%
  group_by(Year) %>%
  summarise(total_travel_count = sum(Travel_Count, na.rm = TRUE))

ggplot(year_trend, aes(x = Year, y = total_travel_count)) +
  geom_line() +
  xlab('Year') +
  ylab('Total Travel Count') +
  ggtitle('Trend of Travel Counts Over Years')

# Plot the distribution of travel counts
ggplot(data, aes(x = Travel_Count)) +
  geom_histogram(bins = 30, fill = 'blue', color = 'black') +
  xlab('Travel Count') +
  ylab('Frequency') +
  ggtitle('Distribution of Travel Counts')

