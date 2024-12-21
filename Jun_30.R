#8 Dataformatting
covid_csv <-  read.csv("/Users/josephkambham/Downloads/MS_R/covid_data_kerala.csv")
#View(covid_csv)
covid_csv$Date <- as.Date(covid_csv$Date , format = "%d-%m-%y")
covid_csv$Month <-  format(covid_csv$Date , '%B')
covid_csv$Year <-  format(covid_csv$Date , '%Y')

print(covid_csv$Month)
head(covid_csv)

View(Titanic)
data <- mdeaths
View(UCBAdmissions)
View(HairEyeColor)
View(InsectSprays)
View(mtcars)

# 9 Extracting a text from file

library(stringr)

fifa_csv <- read.csv("/Users/josephkambham/Downloads/MS_R/fifa_data.csv")
View(fifa_csv)
fifa_csv$Keyword <- str_extract_all(fifa_csv$Preferred.Foot, "\\bRight\\w*\\b")
head(fifa_csv)

###################

install.packages("RMySQL")
library(RMySQL)


con <- dbConnect(RMySQL :: MySQL(),
                 user = "root",
                 password ="Windows-1",
                 dbname = "University",
                 host = "localhost")

tables_list <- dbListTables(con)
print(tables_list)

course_query <- dbGetQuery(con, "SELECT * FROM COURSES")
print(course_query)

query_enrol <-  "SELECT * FROM COURSES WHERE Credits = '5' "
course_filter <-  dbGetQuery(con, query_enrol)
print(course_filter)

create_query <-  "CREATE TABLE test_Rstudents(
StudentID INT PRIMARY KEY ,
Name VARCHAR(100) not null,
DOB DATE not null,
Email VARCHAR(50)
); "

create_table_qry <- dbGetQuery(con, create_query)

print(create_table_qry)


select_qry <- " Select Name from Students as stu 
join Enrollments as enr on stu.StudentID=enr.StudentID 
group by Name;"


select_student <- dbGetQuery(con, select_qry)
print(select_student)


dbDisconnect(con)


##################
files <-  list.files("/Users/josephkambham/Downloads/MS_R/")
print(files)

## To remove the files
file_remove <- file.remove("/Users/josephkambham/Downloads/MS_R/Week 4 Lab (1).docx")
print(file_remove)

### Check if files exists or not
files_exists <-  file.exists("/Users/josephkambham/Downloads/MS_R/Week 4 Lab (1).docx")
print(files_exists)


## move file to new loc

file_move <- file.copy("/Users/josephkambham/Downloads/MS_R/fifa_data.csv", "/Users/josephkambham/Downloads/fifa_data.csv")
print(file_move)
