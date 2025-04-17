inputs_dir <-"C:/Test/rsg_hack_aoc/inputs/"
input_file <- file.path(inputs_dir, "day2.txt")

lines <- readLines(input_file)
split_lines <- strsplit(lines, "x")

ribbon_length <- function(x) {
  x <- as.numeric(x)
  short_sides <- sort(x)[1:2]
  sum(short_sides) * 2 + prod(x)
}

sum(vapply(split_lines, ribbon_length, numeric(1)))

