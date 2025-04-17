# The elves are running low on wrapping paper, and so they need to submit an order for more.
# They have a list of the dimensions (length l, width w, and height h) of each present,
# and only want to order exactly as much as they need.
# Fortunately, every present is a box (a perfect right rectangular prism),
# which makes calculating the required wrapping paper for each gift a little easier:
# find the surface area of the box, which is 2*l*w + 2*w*h + 2*h*l.
# The elves also need a little extra paper for each present: the area of the smallest side.
# For example:
# A present with dimensions 2x3x4 requires 2*6 + 2*12 + 2*8 = 52 square feet of wrapping paper
# plus 6 square feet of slack, for a total of 58 square feet.

inputs_dir <-"C:/Test/rsg_hack_aoc/inputs/"
input_file <- file.path(inputs_dir, "day2.txt")

lines <- readLines(input_file)
split_lines <- strsplit(lines, "x")
nums <- as.numeric(unlist(split_lines))
dims <- matrix(nums, ncol = 3, byrow = TRUE)

head(lines)

L <- dims[, 1]
W <- dims[, 2]
H <- dims[, 3]

lw <- L * W
wh <- W * H
hl <- H * L

surface_area <- 2 * (lw + wh + hl)
min_surface_area <- pmin(lw, wh, hl)

total_size <- surface_area + min_surface_area
total <- sum(total_size)
print(total)

