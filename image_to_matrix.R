devtools::install_github("coolbutuseless/nonogram")
library(magick)

im <- image_read("Rlogo.png")
im

im2 <- im |> 
  image_quantize(colorspace = "gray", dither = TRUE) |> 
  image_scale(geometry = geometry_size_pixels(20, 20))
im2


mat <- t(1L - 1L * (im2[[1]][1,,] > 200))
nonogram::create_matrix_plot(mat)




