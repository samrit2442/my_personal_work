# Finding out unique places with distances ----
dummy_df <- tribble(
  ~place1, ~place2, ~dist,
  "MUM", "KOL", 200,
  "HYD", "CHN", 200,
  "MUM", "DLH", 300,
  "DLH", "HYD", 400,
  "MUM", "KOL", 200,
  "MUM", "DLH", 300,
  "MUM", "KOL", 200,
  "KOL", "MUM", 200,
  "HYD", "CHN", 200,
  "HYD", "MUM", 250,
  "HYD", "DLH", 400,
  "MUM", "DLH", 300
)

dummy_df <- dummy_df |> 
  mutate(id = sample(10001:10012, 12))

dummy_df |> 
  rowwise() |> 
  mutate(plc1 = min(place1, place2),
         plc2 = max(place1, place2)) |> 
  ungroup() |> 
  distinct(plc1, plc2, dist)



