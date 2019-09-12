##Lab 1 Coding Exercises

states<-c(15,10,28,27,27,17,29,23,21,36,16,35,32,27,34)


#1
#Answer = 4
X = c(47,34,33,65,37,NA,43,NA,11,NA,23,NA)
Y = c(47,34,33,65,37,NA,43,NA,11,NA,23,4)
numNas = length(which(is.na(X)))

which(is.na(X) & is.na(Y))
#2

age = c(25,30,45,60,12,41)
smoker = c('T','F','T','F','F','F')
weight = c(120,137,0,168,91,142)
example_data = data.frame(age,smoker,weight)
example_data[3,3] = 150

#3

#Returns the percentage of values that are NA in a vector
#x = a vector
percentNA = function(x){
  mean(is.na(x))
}

#Returns a vector where each value is now the proportion of the sum of the vector, excluding NA values
#x = a vector
propVec = function(x){
  x / sum(x, na.rm = TRUE)
}

#4
#4. Write a function named `both_na()`. This function take two vectors of the same length and
#returns the number of positions that have an `NA` value in both vectors. 

both_na = function(x, y){
  length(which(is.na(x) & is.na(y)))
}

