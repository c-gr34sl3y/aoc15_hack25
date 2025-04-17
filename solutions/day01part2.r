# Santa is trying to deliver presents in a large apartment building, but he can't find the right floor
# - the directions he got are a little confusing. He starts on the ground floor (floor 0)
# and then follows the instructions one character at a time.  An opening parenthesis, (,
# means he should go up one floor, and a closing parenthesis, ), means he should go down one floor.
# The apartment building is very tall, and the basement is very deep;
# he will never find the top or bottom floors.


inputs_dir <-"C:/Test/rsg_hack_aoc/inputs/"
input_file <- file.path(inputs_dir, "day1.txt")

line <- readLines(input_file)[1]
chars <- strsplit(line, "")[[1]]

floors <- c()
for (char in chars) {
  if (char == "(") {
    floors <- c(floors, 1)
  } else if (char == ")") {
    floors <- c(floors, -1)
  }
}

final_floor <- sum(floors)
print(final_floor)
