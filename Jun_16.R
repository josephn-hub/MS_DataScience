a <- list(1,4,5,6,99, "Hello", "World")
b <- list(TRUE, "BEST", 6.6)
b[4] <- "new"
b

joe_1 = c("Hello","new")
joe_1
joe_2 = c("Jo", "kambham")
joe_2
new_joe = paste(joe_1, joe_2)
new_joe

new_list = list("orange", "berry", "grape")
new_list
"apple" %in% new_list

a_mat = matrix(c(2,4,6,7,9,10) , nrow = 3 , ncol=2)
b_mat = matrix(c(11,12,13,14,15,16) , nrow=3 , ncol=2)
a_mat
del_a = a_mat[,-2]
del_a
dim(del_a)
length(del_a)

a_mat[1,]
a_mat[,1]

c_mat <- cbind(a_mat,b_mat)
d_mat <- rbind(a_mat,b_mat)
c_mat
d_mat


print(matrix(10,3,3))
print(diag(10,3,3))
print(diag(c(1,1,1),3,3))



# dataframe


students_adf = data.frame(name= c("jo", "christy", "kambham"),
                         age = c(32,6,30),
                         course = c("cs","civil","it"))

students_bdf = data.frame(name= c("Jay", "Queeny", "Akka"),
                         age = c(28,21,35),
                         course = c("mech","AI","ds"))

new_df = rbind(students_adf, students_bdf)
new_df

new_cdf = cbind(students_adf, students_bdf)
new_cdf
students_df

dim(students_df)
ncol(students_df)
summary(students_df)

matrix_a = matrix(1:4, nrow=2)
matrix_a


cal_avg <- function(grades){
  avg <- mean(grades)
  return(avg)
}

student_1 = list(name="Jo", grades=c(30,50,60))
print(student_1)

avg_grades =cal_avg(student_1$grades)
cat("Averge", student_1$name , "is", avg_grades)


read_csv = read.csv("/Users/josephkambham/Downloads/2023-05-31 10_35pm.csv")
print(read_csv)
