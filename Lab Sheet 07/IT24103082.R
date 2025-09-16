setwd("C:\\Users\\HP\\OneDrive\\Desktop\\IT24103082")
getwd()


#Part 01
#Q01
punif(10,min=0,max = 30,lower.tail = TRUE)

#Q02
1-punif(20,min = 0,max = 30,lower.tail = TRUE)
punif(20,min=0,max = 30,lower.tail = FALSE)

#Part 02
#Q01
pexp(3,rate = 0.5,lower.tail = TRUE)

#Q02
1-pexp(4,rate = 0.5,lower.tail = TRUE)
pexp(4,rate = 0.5,lower.tail = FALSE)

#Part03
#Q01
1-pnorm(37.9,mean = 36.8,sd = 0.4,lower.tail = TRUE)

#Q02
pnorm(36.9,mean = 36.8,sd = 0.4,lower.tail = TRUE)-pnorm(36.4,mean = 36.8,sd = 0.4,lower.tail = TRUE)

#Q03
qnorm(0.012,mean = 36.8,sd = 0.4,lower.tail = TRUE)

#Q04
qnorm(0.01,mean = 36.8,sd=0.4,lower.tail = FALSE)



#Exercise
#Part 01
punif(25,min = 0,max = 40,lower.tail = TRUE)-punif(10,min = 0,max = 40,lower.tail = TRUE)

#Part 02
pexp(2,rate = 1/3,lower.tail = TRUE)

#Part03
#Q01
1-pnorm(130,mean = 100,sd = 15,lower.tail = TRUE)

#Q02
qnorm(0.95,mean = 100,sd =15,lower.tail = TRUE)