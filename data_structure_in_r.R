# vector 

vec <- c(1,2,3,4,"hello")
print(vec)

#matrix

m = matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(m)

m = matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE)
print(m)
#matrix with column and row name
colnames <- c("col1", "col2", "col3")
rownames <- c("row1", "row2", "row3")

m = matrix(11:19, nrow = 3, ncol = 3, byrow = TRUE, dimnames = list(colnames, rownames))
print(m)

#Array
print("+++++++++++++++++++++++++++++++++++++++")
a <- array(1:20,dim = c(3,3,4))
print(a)

#factor

x <- factor(c("male", "female","male","male","male", "female", "unspecific"))
print(x)

#list

vec <- c(1,2,3,4)
m <- matrix(vec,2,2)
#print(m)

list_data <- list(vec,m)
print(list_data)

#data frames

age <- c(22,34,51)
name <- c("neelam", "rahul", "kajal")
sex <- c("f","m","f")

df = data.frame(age, name, sex)
print(df)


# how to import data from excel
library(readxl)
my_data = read_excel("D:/neelam/R/details.xlsx")
print(my_data)



# read data from csv
data = read.csv("D:/neelam/R/details.csv", sep = ",")
print(data) 

# read data from .txt file

data = read.table("D:/neelam/R/details.txt")
print(data)


#export data into csv
age <- c(22,34,51)
name <- c("neelam", "rahul", "kajal")
sex <- c("f","m","f")

df = data.frame(age, name, sex)
write.csv(df,"D:/neelam/R/details1.csv")



#data manipulation 
#apply()
m = matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(m)
apply(m,1,sum)
apply(m,2,sum)


#lapply()

lst = list(a = c(1,1), b= c(2,2))
lapply(lst, sum)


#sapply()
lst = list(a = c(1,1), b= c(2,2))
sapply(lst, sum)


#dplyr package function 

library(dplyr)
head(mtcars, 3)
head(iris, 4)

#select()

select(mtcars, mpg, disp)
select(iris, Sepal.Length)
select(mtcars, mpg:disp)

select(iris, matches(".t."))
select(iris, starts_with("Petal"))


#filter

head(mtcars,3)
filter(mtcars, mpg == 21)

#arragne 

arrange(mtcars, desc(disp))
head(arrange(mtcars,disp), 5)

#mutate
head(mutate(mtcars, new_disp = disp/10),5)

#summarise
summarise(group_by(mtcars, cyl), mean(disp))
summarise(group_by(mtcars, cyl),mean =  mean(disp), sum = sum(disp))