# Insert music in between two codes ----

library(beepr)

testit <- function(x)
{
  beep(5)
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
  beep(3)
}

testit(5)