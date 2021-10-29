library(readr)

# Two lines, no header: works
file_con <- file("twolines.txt")
writeLines("'A'|'B'|'C'|1|2|3\n'A'|'B'|'C'|1|2|3", con = file_con)
close(file_con)

read_delim("twolines.txt", col_names = FALSE)

# One line, no header, with new line: works
file_con <- file("oneline_newline.txt")
writeLines("'A'|'B'|'C'|1|2|3\n", con = file_con)
close(file_con)

read_delim("oneline_newline.txt", col_names = FALSE)

# One line, no header: hangs
file_con <- file("oneline.txt")
writeLines("'A'|'B'|'C'|1|2|3", con = file_con)
close(file_con)

read_delim("oneline.txt", col_names = FALSE)

