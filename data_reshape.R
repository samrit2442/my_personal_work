library(tidyverse)

dummy_df <- tribble(
  ~acc_id, ~prod, ~dec_23, ~nov_23, ~oct_23, ~dec_22, ~nov_22, ~oct_22,
  123, "a", 12, 0, 10, 25, 20, 0,
  123, "b", 12, 10, 0, 35, 10, 1,
  123, "c", 10, 1, 10, 45, 30, 10,
  123, "d", 5, 5, 25, 35, 10, 15,
  140, "d", 12, 50, 10, 5, 10, 5,
  140, "e", 5, 50, 50, 10, 50, 20,
  150, "b", 50, -20, 10, 20, 5, 15
)

dummy_df2 <- dummy_df |> 
  pivot_longer(cols = c(dec_23, nov_23, oct_23, dec_22, nov_22, oct_22),
    names_to = "month",
    values_to = "sales")

dummy_df3_mon <- dummy_df2 |> 
  group_by(acc_id, month) |> 
  reframe(mrkt = sum(sales))

dummy_df_a <- dummy_df2 |> 
  filter(prod == 'a') |> 
  group_by(acc_id, month) |> 
  reframe(prod_a = sum(sales))

dummy_df_b <- dummy_df2 |> 
  filter(prod == 'b') |> 
  group_by(acc_id, month) |> 
  reframe(prod_b = sum(sales))

dummy_df_c <- dummy_df2 |> 
  filter(prod == 'c') |> 
  group_by(acc_id, month) |> 
  reframe(prod_c = sum(sales))

dummy_df_fin <- dummy_df3_mon |> 
  full_join(dummy_df_a) |> 
  full_join(dummy_df_b) |> 
  full_join(dummy_df_c)

dummy_df_fin[is.na(dummy_df_fin)] <- 0

dummy_df_fin2 <- dummy_df_fin |> 
  mutate(comp = mrkt - prod_a - prod_b - prod_c)

dummy_df_fin3 <- dummy_df_fin2 |> 
  pivot_longer(cols = c(prod_a, prod_b, prod_c),
               names_to = "prod",
               values_to = "sales")
