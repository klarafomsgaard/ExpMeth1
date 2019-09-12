box<-9
#check wether a variable is numeric
class(box)

name<-"peter"

a_vector<-c(2,3,4)

cat <- c(2,3,4)

group1 <-c(cat,a_vector) 

#variables with numeric values can be used in math 
a_vector+3

#access specifik number
a_vector[1]

#check the amount of variables in a vector
length(a_vector)

#for R to remember the value - give it a new name
a_new_vector<-a_vector*3
a_new_vector

#remove variables from vector (always assign to new name)
a_new_vector[-c(1,2)]

#remove variable from the environment
rm(box)




#Exercises
#Create vectors with friends and siblings
nearby<-c("Sigrid","Freyja","Kazik","Kasper","Lasse")
siblings <- c(1,2,2,1,3)
#Add 2
siblings+2
nearby+2

#Check class
class(siblings)
class(nearby)

#Find sum of siblings
sum(siblings)
#Find sum of first two people
sum(siblings[c(1,2)])

#Make dataframe
nearbyData<-data.frame(name=nearby,siblings=siblings)

#Add gender
nearbyData$gender<-c("f","f","m","m","m")
#Check whether its added
nearbyData

#Add person to dataframe
#Tell R that it is characters and not factors ()
nearbyData$name <- as.character(nearbyData$name)
nearbyData<-rbind(nearbyData,c("Klara",2,"f"))
View(nearbyData)

#Find the mean
nearbyData$siblings <- as.numeric(nearbyData$siblings)
mean(nearbyData$siblings)

#Add real amount of siblings - new column 
nearbyData$actual_siblings <- c(2,1,3,1,1,2)
nearbyData

#Make column to show how much you were off
nearbyData$difference <- as.numeric(nearbyData$siblings-nearbyData$actual_siblings)
nearbyData

#Exercise 3

#Find the people who have three siblings
subset(nearbyData,actual_siblings==3)

#Who has more than two siblings?
subset(nearbyData,actual_siblings>2)

#Create a subset of the data containing only people you guessed right
subset(nearbyData,actual_siblings==siblings)

?round()

#Try again
name<-c("Birgitte","Bo","Andrea","Ea")
age <- c(50,54,18,13)
familyData <- data.frame(name=name,age=age)
familyData$shoesize<-c(40,47,39,40)
familyData$name<-as.character(familyData$name)
familyData<-rbind(familyData,c("Klara",21,40))
familyData
