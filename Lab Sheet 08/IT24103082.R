setwd("C:\\Users\\HP\\OneDrive\\Desktop\\IT24103082")
getwd()


data <- read.table("Data - Lab 8.txt", header=TRUE)
fix(data)
attach (data)

##Question 01
popmn <- mean (Nicotine)
popvar <- var (Nicotine)


##Question 02
samples<-c()
n<-c()

for(i in 1:30){
  S <- sample(Nicotine,5,replace=TRUE)
  samples <- cbind(samples,S)
  n <- c(n,paste('S',i))
}

colnames(samples)=n

s.means <- apply(samples,2,mean)
s.vars <- apply(samples,2,var)

##Question 03
samplemean <- mean (s.means)
samplevars <- var (s.means)

#Question 04
popmn
samplemean

#Question 05
truevar=popvar/5
samplevars

#Exercise

data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

#Question 01
popmn <-mean(Weight.kg.)
print(popmn)

popvar <-var(Weight.kg.)
print(popvar)

popsd<- sqrt(popvar)
print(popsd)

#Question 02
samples <-c()
n <- c()
for(i in 1:25){
  s <-sample(Weight.kg.,6 , replace=TRUE)
  samples <- cbind(samples,s)
  n <-c(n,paste('s',i))
}
colnames(samples)=n
s.means <-apply(samples,2,mean)
s.vars <- apply(samples,2,var)

samplemean <-mean(s.means)
print(samplemean)

samplevars <-var(s.means)
print(samplevars)

samplesd <- sqrt(samplevars)
print(samplesd)


#Question 03
#Comparing the population sd and sample sd
popmn
samplemean

#Comparing the popuation sd and sample sd
popsd
samplesd

