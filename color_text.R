# Color text in R

library(insight)
print_color("The text is Red", "red")
print_color("The text is Yellow", "yellow")

library(crayon)

cat(green("Your Text is GREEN"))
cat(white("Your Text is WHITE")) 
cat(blue("Your Text is BLUE"))
cat(red("Your Text is RED"))

cat(underline("Underline"))
cat(bold("BOLD"))
cat(blurred("Blurred"))
cat(italic("Italic"))
cat(inverse("Inverse"))
cat(strikethrough("Strikethrough"))

cat(bgMagenta("Magenta Background"))
cat(bgCyan("Cyan Background"))
cat(bgYellow("Yellow Background"))

cat(italic$bold("Bold and Italic")) # Combining two or more style using $ operator
cat(italic$red("Red and Italic"))
cat(italic$cyan$bold$bgYellow("Bold, Italic text in Cyan color with Yellow background"))


cat(bold("This is the BOLD text"))
cat(italic("This is the Italic text"))


