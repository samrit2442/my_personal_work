# Load required libraries
library(tidyverse)

# Example data
df <- data.frame(text = c("This is string1", "Another text with string1 but not string2", "No match here"))

# Strings to check
string1 <- "string1"
string2 <- "string2"

# Filter the dataframe
filtered_df <- df %>%
  mutate(matched_str = case_when(
    str_detect(text, string1) ~ "string1",
    str_detect(text, string2) ~ "string2",
    str_detect(text, string1) | str_detect(text, string2) ~ "string1, string2",
  ))

# Separate rows


# View the result
print(separated_df)
