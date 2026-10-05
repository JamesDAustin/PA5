# PA5.R
# James Davon Austin
# 10/6/2026
# Demonstrates cat() and the three types of argument matching.

# Descriptive example using cat()
cat("COP2073C", "Programming Assignment 5", sep = " - ", fill = TRUE)

# Demonstrate exact, partial, and positional argument matching
exact_match <- "cat('Exact', 'Matching', sep = ' - ')"
partial_match <- "cat('Partial', 'Matching', s = ' - ')"
positional_match <- "cat('Positional', 'Matching', ' - ')"

# Create a data frame containing the three argument matching examples
matching_examples <- data.frame(
  Type = c("Exact", "Partial", "Positional"),
  Example = c(exact_match, partial_match, positional_match)
)

# View the data frame
matching_examples

# Write the data frame to a CSV file
write.csv(matching_examples, "matching_examples.csv",
          row.names = FALSE)

# Remove the data frame from the environment
rm(matching_examples)

# Read the CSV file to restore the data frame
matching_examples <- read.csv("matching_examples.csv")

# View the restored data frame
matching_examples