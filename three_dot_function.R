library(tidyverse)

tab <- tibble(aa = letters[1:24],
              tt = c(1:10, 1:14),
              ss = c(rep("A", 4), rep("S", 6), rep("A", 5), rep("S", 5), rep("D", 4)),
              dd = round(rnorm(24, 10)*100),
              ff = round(rexp(24, rate = 0.5), 2))
tab


my_fun <- function(kywrd, ...) {
  fltr1 <- enquos(...)
  
  df <- tab |> 
    filter(str_detect(ss, kywrd)) |> 
    filter(!!!fltr1)
  
  return(df)
}

my_fun(kywrd = "A", ff > 1.59)

example <- function(...) {
  
  df1 <- mtcars |> 
    group_by(...) |> 
    summarise(Mean = mean(mpg))
  
  df2 <- mtcars |> 
    group_by(...) |> 
    summarise(Median = median(hp))
  
  merged <- merge(df1, df2, by = sapply(enquos(...), quo_name)) 
  return(merged)
}

example(carb)
example(cyl, carb)
