library()

install.packages(c('xlsxjars','xlsx','rJava'))
library(xlsxjars)

med_file <-  read.table("/Users/josephkambham/Downloads/MS_R/medicines.txt")
View(med_file)

med_file_1 <- data.frame(id = med_file[,1] , first_name = med_file[,2])
med_file_1

diab_csv = read.csv("/Users/josephkambham/Downloads/MS_R/diabetes.csv")
View(diab_csv)

install.packages(c('readxl','writexl'))

excel_sheets("/Users/josephkambham/Downloads/MS_R/superstore.xlsx")

read_store_xlsx <- read_excel("/Users/josephkambham/Downloads/MS_R/superstore.xlsx",
                        sheet="Orders")

View(read_store_xlsx)
sum(read_store_xlsx["Quantity"])
sum(read_store_xlsx["Sales"])

# Write data to file

df <- data.frame(matrix(1:50, nrow=10, ncol=5))
df

write_to_xksx <- write_xlsx(df, path="/Users/josephkambham/Downloads/MS_R/matrix.xlsx")

View(write_to_xksx)


# Merge 2 files

file_1 <-  read.csv("/Users/josephkambham/Downloads/MS_R/diabetes.csv")
file_2 <-  read.csv("/Users/josephkambham/Downloads/MS_R/titanic.csv")
merged_files <-  merge(file_1, file_2, by="Age")
View(merged_files)

# Sort Attribute by age
sort_age <-  merged_files[order(merged_files$Age, decreasing = TRUE),]
View(sort_age)
