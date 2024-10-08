library(tidyverse)
library(readxl)

midsem <- read.csv("Midsem grades.csv", header = F)
assgn1 <- read_excel("MTH442 grading.xlsx", sheet = "Assignment-1")

colnames(midsem) <- c("Roll_No", "Marks")

midsem_marks <- midsem |> 
  left_join(select(assgn1, `Email ID`, `Roll Number`),
            join_by(`Roll_No` == `Roll Number`))

write.csv(midsem_marks, "midsem_marks.csv")
