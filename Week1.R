# Assign value using  = and <

a = 5
b <- 5
d = 10
e <- 100L
z <- c(1,2,3)
 result <- rowSums(z,na.rm = TRUE)
 
 sum(1:4)
class(e)

f <- 100.34

class(f)

com = 100 + 3i

class(com)

l = FALSE

class(l)


# Type casting

type_cast = as.integer(f)

class(type_cast)

log_cast = as.logical(a)

class(log_cast)

# In built func

sqrt(36)
ceiling(6.8)
floor(9.8)
abs(-7.8)


s1 = "Joseph"
cat(s1)


s2 = "Naveen"
s3 = "kiran"

paste(s2,s3)
paste0(s2,s3)

s4 = "qwertyuiolkjhgfdsazxcvbnm,,ku"
nchar(s4)

s5 = "Gonnna rain"
grep("nna", s5)

s6 = "Need some break"
substr(s6, 4, 14)

s7 = "    There is some spaces"
trimws(s7)

s8 = "kambham"

s9 = "DATA SCIENCE"
tolower(s9)

s9 <- "DATA SCIENCE"
startsWith(s9, 'D')

t1 = "2024/05/19 12:30:00"
result = strftime(t1, format= "yyyy-mm-dd", tz = "UTC" )

class(result)

a <- 10
b <- 3
c <- a %% b
print(c)

# Comparision operators ==, >=,<=, !=, >, <

x <- 15
y <- 15

x == y 


x <- 15
y <- 16

x >= y

# Logical operators
x <- TRUE
y <- FALSE

xor(x,y)
x | y

!x