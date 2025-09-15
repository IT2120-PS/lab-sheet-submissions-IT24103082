setwd("C:\\Users\\HP\\OneDrive\\Desktop\\IT24103082")
getwd()


#Part 01
#Q01
#n=44 and p=0.92


#Q02
dbinom(40,44,0.92)

#Q03
pbinom(35,44,0.92,lower.tail=TRUE)


#Q04
1-pbinom(37,44,0.92,lower.tail = TRUE)

pbinom(37,44,0.92,lower.tail = FALSE)


#Q05
pbinom(42, 44, 0.92,lower.tail = TRUE)-pbinom(39, 44, 0.92,lower.tail = TRUE)

#Part02
#Q01
#Number of babies born in a hospital on a given day


#Q02
#Poisson Distribution(lambda=5)

#Q03
dpois(6,5)

#Q04
ppois(6,5,lower.tail = FALSE)



#Exercise
#Part01

#Q01
#X-Number of students who passed the exam out of 50 student(n=50,p=0.85)

#Q02
1-pbinom(46,50,0.85,lower.tail = TRUE)

#Part02
#Q01
#X-Number of calles received in one hour

#Q02
#Poisson Distribution with lambda=12

#Q03
dpois(15,12)



