library(stringr)

## #1
# how to print quotation
# use escape character \
# cat()

int("\"")
print("DSO")
cat("\"")
cat("DSO\n545")
# \n stands for a new line

cat("DSO\t545")
# \t to create a tab

## #2
cat(":-\\") 

cat("(^_^\")")

cat("@_'-')")

cat("\\m/")

## #3

?str_locate()
?str_sub()

## #4
str_locate(string = "great", pattern = "a")
str_locate( "fantastic", "a") # only tell where the first a locates
str_locate_all( "fantastic", "a")
str_locate("super","a")

str_locate(c("great", "fantastic", "super"),
             "a")

## #5
# str_sub() to extract the desired amount of text 
str_sub(string = "testing", start = 1,
        end = 3)

str_sub(string = "testing", start = 4,
        end = 7)

str_sub(string = "testing", start = 1,
        end = 4)

?str_extract  

## # 6
# this example tell us how to specify and extract from a vector
input = c("abc","defg")
str_sub(input, c(2,3))

## #7
emails <- readRDS("email.rds")
emails[1]

# read an email
cat(emails[1])

str_locate(emails[1], "\n\n")

## #8
str_locate(emails[1], "\n\n")

header = str_sub(emails[1], 
                 start = 1, 
                 end = 842)
cat(header)

body = str_sub(emails[1], 843)
cat(body)

## #10
# following #8 and extract headers and bodies from all emails

# extract locations of all emails
location = str_locate(emails, "\n\n")

headers = str_sub(emails, 
                 start = 1, 
                 end = location[,1])
cat(headers)

bodies = str_sub(emails, start= location[,2])
cat(bodies[2])
