setwd("C:\\Users\\it24103082\\Desktop\\IT24103082")
getwd()

data<-read.table("Data.txt",header=TRUE,sep=",")
fix(data)
attach(data)


#Part 01

names(data)<-c("X1","X2")
attach(data)

hist(X2,main = "Histogram for Number of shareholders")

#Part 02

#"Breaks"-Define number of classes we need in histgram
#"right"-Define whether classes have closed or open intervals
# Part 03
# Create histogram (assumed 'X2' is your data)
histogram <- hist(X2, main = "Histogram for Number of Shareholders", 
                  breaks = seq(130, 270, length = 8), right = FALSE)

# Assign class limits of the frequency distribution into "breaks"
breaks <- round(histogram$breaks)

# Assign class frequency of the histogram into a variable called "freq"
freq <- histogram$counts

# Assign midpoint of each class into a variable called "mids"
mids <- histogram$mids
mids

# Create the "classes" variable for frequency distribution
classes <- c()

# Create a for loop to assign classes of the frequency distribution into "classes"
for(i in 1:(length(breaks) - 1)) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i + 1], ")")
}

# Merge and display classes with corresponding frequencies
cbind(classes = classes, Frequency = freq)

# Part 04
# Draw frequency polygon to the same plot
lines(mids,freq)
plot(mids, freq, type = 'l', main = "Frequency Polygon for Shareholders", 
     xlab = "Shareholders", ylab = "Frequency", ylim = c(0, max(freq)))

# Part 05
# Calculate cumulative frequencies
cum.freq <- cumsum(freq)

# Create a variable called "new" for storing cumulative frequencies (for the ogive)
new <- c()

#To store cumulative frequencies in order to get the ogive
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}
                      
# Draw cumulative frequency polygon in a new plot (Ogive)
plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon for Shareholders", 
     xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))

# Obtain upper limit of each class along with its cumulative frequency in a table
cbind(Upper = breaks, CumFreq = new)





getwd()

#EXercise
#01
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE)
fix(Delivery_Times)
attach(Delivery_Times)


#02
breaks<-seq(20,70,by=(70-20) /9)
hist(Delivery_Time_.minutes.,main ="Delivery Time(Minutes)",breaks=breaks, right=TRUE)


#03
#The curve shows a bimodal distribution and appears approximately symmetrical. The data spans between 20 to 70 minutes.


#04
freq_table<-hist(Delivery_Time_.minutes.,breaks=breaks,)
cum_freq<-cumsum (freq_table$counts)

plot(freq_table$mids,cum_freq,type="o",main="Cumulative Frequency polygon",xlab="Delivery Time",ylab="Cumulative Frequency")

