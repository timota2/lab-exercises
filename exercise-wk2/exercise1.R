## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# You can't take the sum of a non numerical value such as initial characters.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# You install the library, but you do not import it so the program doesn't know you're calling it.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# The variable is called initals not, initial.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vect <- 1:100
typeof(vect)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vect.one, vect.two) {
  vect.length <- length(vect.one) - length(vect.two)
  return(paste("The difference in lengths is", vect.length, sep=" "))
}

# Pass two vectors of different length to your `CompareLength` function
vect.new <- 1:50
CompareLength(vect, vect.new)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vect.one, vect.two) {
  if(CompareLength(vect.one, vect.two) >= CompareLength(vect.two, vect.one)) {
    return(paste("Your first vector is longer by"), CompareLength(vect.one, vect.two), "elements", sep=" ")
  } else {
    return(paste("Your second vector is longer by"), CompareLength(vect.one, vect.two), "elements", sep=" ")
  }
}
# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vect, vect.new)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vect.one, vect.two, vect.three) {
  return(new.vect <- c(vect.one, vect.two, vect.three))
}
# Send 3 vectors to your function to test it.
CombineVectors(vect, vect.new, 150:200)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(course.names) {
  return(str_to_lower(course.names))
}

