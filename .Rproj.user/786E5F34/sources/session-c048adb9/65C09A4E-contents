library(readxl)
library(tidyverse)
## Load the dataset with [] and ""

df <- read_xlsx("medical_dummy_data.xlsx")

## Separate into different rows by comma

df1 <- df |> 
  mutate(rx_class = str_replace_all(Rx_class, "\\[", ""),
         rx_class = str_replace_all(rx_class, "\\]", ""),
         rx_class = str_replace_all(rx_class, '"', '')) |> 
  separate_rows(rx_class, sep = ",") |> 
  mutate(rx_class = str_squish(rx_class),
         val = 1) |> 
  select(-Rx_class) |> 
  pivot_wider(names_from = rx_class, values_from = val) |> 
  mutate_all(~replace_na(.,0)) # Replace all NAs by 0






