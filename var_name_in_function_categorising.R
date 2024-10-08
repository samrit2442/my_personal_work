library(tidyverse)
tst <- readxl::read_xlsx("Book1.xlsx")

tst |> 
  distinct(id, diag_grp) |> 
  mutate(a = 1) |> 
  pivot_wider(names_from = diag_grp, values_from = a) |> 
  mutate(tot = rowSums(across(!id), na.rm = T)) |> 
  filter(d == 1 & tot == 1) |> 
  select(id) |> 
  pull()

# Checking rev()

a = 1:10
rev(a)

A <- matrix(1:9, nrow = 3)
A
apply(A, 2, rev)

# Use variable name as string inside a function

fn <- function(your_var_name) {
  var_name = sym(your_var_name)
  
  df <- mtcars |> 
    select(!!var_name) |> 
    summarise(mean = mean(!!var_name),
              min = min(!!var_name))
  return(df)
}

fn("hp")
fn("wt")


iris |> 
  group_by(Species) |> 
  tally()

iris |> 
  group_by(Species) |> 
  summarise(n = n())


# Create a variable x taking values from A to L with random number of repetitions

x <- rep(LETTERS[1:12], times = sample(1:10, size = 12, replace = T))
x
x |> table()

# A  B  C  D  E  F  G  H  I  J  K  L 
# 6  9  7  5  4  4  6 10 10 10  3  2 

x |>  
  fct_lump_n(6) |> 
  table()
# B     C     H     I     J Other 
# 9     7    10    10    10    30 

x |>  
  fct_lump_n(8) |> 
  table()
# A     B     C     D     G     H     I     J Other 
# 6     9     7     5     6    10    10    10    13 











