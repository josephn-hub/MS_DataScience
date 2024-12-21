x <- 5
y <- 8


x == y

!(x ==y )

x!=y && x < y


if (x > y) {
  print("X IS greater than y")
}else if (x ==y) {
  print("x is equal y")
} else {
  print("y greater than x")
}

# Loop

z <- 4

#Infinte loop
while (z <7){
  print(z)
};

# Adding 1 each time
while (z < 7){
  print(z)
  z = z+ 1
}

# For loop

for (i in 1:9){
  print(i)
  i =i +1
};


# Using cat

count <- 3

while (count < 7){
  cat(count, "\n")
  count <- count + 1
}
;
# Using cat program 2

num <- 1
while (num < 10) {
  if (num %% 2 ==0){
    num <- num + 1
    next
  }
  cat(num, " ")
  num <- num +1
};

# Using break program3

number <- 1

while (TRUE){
  if (number >5){
    break
  }
  cat(number, "\n")
  number = number + 1
};

# program 4

for ( i in 1:20){
  cat(i, "\n")
};

#program 5

for (i in 1:5){
  squares <- i ^ 2
  cat ("Square of the number", i ,"is", squares, "\n")
}


# define age of individual if age > 16 can drive vehicle age <16 not eligible for drive
#age == 16 drive vehicle with an individual who has valid license seated next to person


age <- 16

if (age > 16){
  cat("Person with age", age, "can drive vehicle")
}else if (age < 16){
  cat("Person with age", age, "not eligible for driving vehicle")
} else{
  cat("Person with age", age, "can drive vehicle with an individual who has driving license")
}
  
  
# initiliase marks of students and define 6 different ranges to caluculate grades of
#student from A  to F


marks <- 45
student_marks=as.integer(marks)

if (student_marks > 90){
  print("Student scored GRADE A")
}else if (student_marks < 90 && student_marks > 80){
  print("Student scored GRADE B")
}else if (student_marks < 80 && student_marks > 70){
  print("Student scored GRADE C")
}else if(student_marks < 70 && student_marks > 60){
  print("Student scored GRADE D")
}else if (student_marks < 60 && student_marks > 50){
  print("Student scored GRADE E")
} else {
  print("Student scored GRADE F")
  };



sqrt(c(25,96,36))

ave(c(20,10,30))



exp(20)
