# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  n <- length(a)-length(b)
  return (paste("The difference in lengths is ", n))
}

# Pass two vectors of different length to your `CompareLength` function
vector1 <- c(1, 2, 3, 4, 5, 6, 7)
vector2 <- c(1, 2, 3, 4)
CompareLength(vector1, vector2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  difference <- length(v1)-length(v2)
  if(difference > 0) {
    return (paste("Your first vector is longer by ", difference, " elements"))
  } else {
    return (paste("Your second vector is longer by ", abs(difference), " elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vector1, vector2)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
GetVariableName <- function(v) {
  deparse(substitute(v))
}

DescribeDifference2 <- function(v1, v2) {
  difference <- length(v1)-length(v2)
  if(difference > 0) {
    return (paste(GetVariableName(v1), " is longer by ", difference, " elements"))
  } else {
    return (paste(GetVaiableName(v2)," is longer by ", abs(difference), " elements"))
  }
}
DescribeDifference2(vector1, vector2)
