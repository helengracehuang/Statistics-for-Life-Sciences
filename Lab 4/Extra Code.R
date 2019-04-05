###############################################
x <- 5
if(x > 0){
  print("Positive number")
}
###############################################
x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}
###############################################
x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")
###############################################
i <- 1
while (i < 6) {
  print(i)
  i = i+1
}
###############################################
# Program to check if
# the input number is
# prime or not
# take input from the user
num = 23

flag = 0
# prime numbers are greater than 1
if(num > 1) {
  # check for factors
  flag = 1
  for(i in 2:(num-1)) {
    if ((num %% i) == 0) {
      flag = 0
      break
    }
  }
} else{ flag = 0}

if(num == 2)    flag = 1
#Translate flag
if(flag == 1) {
  print(paste(num,"is a prime number"))
} else {
  print(paste(num,"is not a prime number"))
}
####################################################################
### import education expenditure data set and assign column names
education <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/robustbase/education.csv", stringsAsFactors = FALSE)
colnames(education) <- c("X","State","Region","Urban.Population","Per.Capita.Income","Minor.Population","Education.Expenditures")
View(education)
ed_exp1 <- education[ ,c(2,3)]
ed_exp1 <- education[c(1:3), ]
ed_exp1 <- education[c(10:21),c(2,6:7)]
ed_exp2 <- education[-c(1:9,22:50),-c(1,3:5)]
ed_exp3 <- education[which(education$Region == 2),names(education) %in% c("State","Minor.Population","Education.Expenditures")]
ed_exp4 <- subset(education, Region == 2, select = c("State","Minor.Population","Education.Expenditures"))