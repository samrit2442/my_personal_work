library(tidyverse)

dbf = data.frame(color=character(0), x=numeric(0), y=numeric(0), stringsAsFactors = F)


## Distractive woman
# Left arm
dbf = bind_rows(dbf, crossing(color='skin', x=seq(4,5), y=seq(1,9)))
dbf = bind_rows(dbf, data.frame(color='skin', x=5, y=10))

# Hair left
dbf = bind_rows(dbf, data.frame(color='womanhair', x=7, y=seq(11,14)))
dbf = bind_rows(dbf, data.frame(color='womanhair', x=8, y=seq(11,18)))
dbf = bind_rows(dbf, data.frame(color='womanhair', x=9, y=seq(12,22)))
dbf = bind_rows(dbf, data.frame(color='womanhair', x=10, y=22))

#Hair top
dbf = bind_rows(dbf, data.frame(color='womanhair', x=seq(10,14), y=23))
dbf = bind_rows(dbf, data.frame(color='womanhair', x=seq(11,13), y=24))

#Hair right
dbf = bind_rows(dbf, data.frame(color='womanhair', x=14, y=22))
dbf = bind_rows(dbf, data.frame(color='womanhair', x=15, y=seq(12,22)))
dbf = bind_rows(dbf, data.frame(color='womanhair', x=16, y=seq(12,20)))
dbf = bind_rows(dbf, data.frame(color='womanhair', x=17, y=seq(12,15)))
dbf = bind_rows(dbf, data.frame(color='womanhair', x=18, y=seq(12,14)))

# Right arm
dbf = bind_rows(dbf, crossing(color='skin', x=seq(19,20), y=seq(1,9)))
dbf = bind_rows(dbf, data.frame(color='skin', x=19, y=10))

# Dress
dbf = bind_rows(dbf, crossing(color='leftwdress', x=seq(6,18), y=seq(1,9)))
dbf = bind_rows(dbf, data.frame(color='leftwdress', x=seq(6,9), y=10))
dbf = bind_rows(dbf, data.frame(color='leftwdress', x=seq(15,18), y=10))
dbf = bind_rows(dbf, data.frame(color='leftwdress', x=seq(17,18), y=11))

#Face and neck
dbf = bind_rows(dbf, crossing(color='skin', x=seq(10,14), y=seq(10,21)))
dbf = bind_rows(dbf, crossing(color='skin', x=seq(9,16), y=11))
dbf = bind_rows(dbf, crossing(color='skin', x=seq(11,13), y=22))

## Boyfriend
#Face
dbf = bind_rows(dbf, crossing(color='skin', x=seq(23,25), y=seq(20,24)))
dbf = bind_rows(dbf, crossing(color='skin', x=seq(24,26), y=seq(19,23)))
dbf = bind_rows(dbf, data.frame(color='skin', x=27, y=22))

#Hair
dbf = bind_rows(dbf, data.frame(color='bfhair', x=seq(23,27), y=25))
dbf = bind_rows(dbf, data.frame(color='bfhair', x=seq(26,27), y=24))
dbf = bind_rows(dbf, data.frame(color='bfhair', x=seq(27,28), y=23))
dbf = bind_rows(dbf, data.frame(color='bfhair', x=28, y=seq(21,22)))
dbf = bind_rows(dbf, data.frame(color='bfhair', x=27, y=seq(20,21)))

#Shirt
dbf = bind_rows(dbf, data.frame(color='bfshirt', x=22, y=1))
dbf = bind_rows(dbf, data.frame(color='bfshirt', x=23, y=1:4))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=24:27, y=1:14))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=25:28, y=5:18))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=27:29, y=19))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=28:29, y=20))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=30:34, y=1:4))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=31:34, y=5:6))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=32:34, y=7:11))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=27:33, y=11:16))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=27:33, y=11:16))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=27:31, y=17))
dbf = bind_rows(dbf, crossing(color='bfshirt', x=27:30, y=18))

#Arm
dbf = bind_rows(dbf, crossing(color='skin', x=28:29, y=1:5))
dbf = bind_rows(dbf, crossing(color='skin', x=29:30, y=5:10))
dbf = bind_rows(dbf, crossing(color='skin', x=31, y=7:10))

## Girlfriend

#Head
dbf = bind_rows(dbf, crossing(color='skin', x=36:38, y=17:18))
dbf = bind_rows(dbf, crossing(color='skin', x=37:39, y=15:16))
dbf = bind_rows(dbf, crossing(color='skin', x=38:39, y=14))

#Hair
dbf = bind_rows(dbf, crossing(color='womanhair', x=40:41, y=14:18))
dbf = bind_rows(dbf, crossing(color='womanhair', x=40:41, y=14:18))
dbf = bind_rows(dbf, crossing(color='womanhair', x=39, y=17:19))
dbf = bind_rows(dbf, crossing(color='womanhair', x=36:39, y=19))
dbf = bind_rows(dbf, crossing(color='womanhair', x=36:37, y=20))
dbf = bind_rows(dbf, crossing(color='womanhair', x=36, y=12:16))
dbf = bind_rows(dbf, crossing(color='womanhair', x=37, y=12:15))
dbf = bind_rows(dbf, crossing(color='womanhair', x=38, y=13))

#Arm
dbf = bind_rows(dbf, crossing(color='skin', x=35:36, y=1:2))
dbf = bind_rows(dbf, crossing(color='skin', x=36:37, y=2:3))
dbf = bind_rows(dbf, crossing(color='skin', x=37:38, y=3:5))
dbf = bind_rows(dbf, crossing(color='skin', x=38:39, y=5:8))
dbf = bind_rows(dbf, crossing(color='skin', x=39:40, y=8:12))
dbf = bind_rows(dbf, crossing(color='skin', x=41, y=11:12))

#Dress
dbf = bind_rows(dbf, crossing(color='rightwdress', x=39:42, y=13))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=42, y=1:12))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=41, y=1:10))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=40, y=1:7))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=39, y=1:5))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=38, y=1:2))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=37, y=1))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=36, y=4:11))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=37, y=6:11))
dbf = bind_rows(dbf, crossing(color='rightwdress', x=38, y=8:12))




dbf$color = as_factor(dbf$color)

dbf = distinct(dbf)

colornames = c(
  skin="#ecbcb4",
  womanhair='black',
  leftwdress='red',
  bfhair='#5a3f11',
  bfshirt='#035aa6',
  rightwdress='grey')

ggplot(dbf, aes(x=x, y=y, fill=color)) +
  geom_tile(show.legend = FALSE) +
  theme_minimal() +
  xlim(0, 43) +
  ylim(0, 30) +
  scale_fill_manual(values=colornames)
