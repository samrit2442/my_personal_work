library(tibble)
library(dplyr)
library(lubridate)

# Create a tibble with a column of dates
date_tibble <- tibble(
  dates = as.Date(c(NA, "2024-10-01", "2024-10-05", "2024-10-06"))
)

# Add a column for the next Sunday
date_tibble <- date_tibble %>%
  mutate(next_sunday = ceiling_date(dates, unit = "week"))

date_tibble