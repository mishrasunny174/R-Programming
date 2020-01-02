# R has five basic or "atomic" classes of objects
# character, numeric(real numbers), integer, complex, boolean
# The most basic object is a vector
# a vector can only contain objects of the same class
# An exception is a list which is represented like a vector but can contain objects of different types
# Empty vector can be created using vector() function

emptyVector = vector() # creating an empty vector
print(emptyVector)

numberVector = vector("numeric", length=10) # Similarly vectors can be created of different types
print(numberVector)

# Objects can be coerced or converted from one object type to other using the as module

x <- 0:6

print(class(x))

charX <- as.character(x)
print(charX)

numericX <- as.numeric(x)
print(numericX)

# similiarly coercion can take place

# lists are similiar to vectors but the major advantages of list is that
# they can contain objects of different types

sampleList <- list("a", 2, 8.2, 1+2i)
print(sampleList)

# Matrices are vector with a dimension attribute. The dimension attribute is itself an integer vector of length 2 
# (nrow, ncol)

sampleNullMatrix <- matrix(nrow = 2, ncol = 3)
print(sampleNullMatrix)

dim(sampleNullMatrix) # get dimensions of sampleNullMatrix

attributes(sampleNullMatrix) # get attributes of sampleNullMatrix

sampleMatrix <- matrix(1:6, nrow = 2, ncol = 3) 
print(sampleMatrix)

sampleMatrix2 <- 1:10
dim(sampleMatrix2) <- c(2, 5) # here c function is concatenate function
print(sampleMatrix2)

# cbind and rbind

a <- 1:3
b <- 3:5

c <- cbind(a, b) # cbind function will bind the vectors a and b column vise
print(c)

r <- rbind(a, b) # rbind function will bind the vectors a and b row vise
print(r)

# Factors are used to represent categorical data. Factors can be unordered or ordered. 
# One can think of a factor as an integer vector where each integer has a label
# Factors are treated specially by modelling functions like lm() and glm()
# Using factors with labels is better than using integers because factors are self-describing;

f <- factor(c("yes", "yes", "no", "yes", "no"))
print(f)

print(table(f)) # print a table of factors with frequency of each level

print(unclass(f)) # Unclass the factor stripping down to underlying values of the object

# Missing values in R are denoted by NA and NaN can be test using is.na() and is.nan() respectively
x <- c(1, 2, NA, NaN, 4)
print(x)
print(is.na(x))
print(is.nan(x))

# Data Frames
# Data frames are used to store tabular data
# - They are represented as a special type of list where every element of the list has to have the
# - same length
# - Each element of the list can be thought of as a column and the length of each element of the list
# - is the number of rows
# - Unlike matrices, data frames can store different classes of objects in each column (just like lists);
# - matrices must have every element be the same class
# - Data frames also have a special attribute called row.names
# - Data frames are usually created by calling read.table() or read.csv()
# - Can be converted to a matrix by calling data.matrix()

x <- data.frame(foo = 1:4, bar = c(T, F, T, F))
print(x)

nrow(x) # get number of rows
ncol(x) # get number of columns

# R objects can also have names

x <- 1:2
print(names(x))

names(x) <- c("foo", "bar")
print(names(x))

print(x)