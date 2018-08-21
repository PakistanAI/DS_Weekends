library(ggplot2) #For later comparisons
library(magrittr)
library(dpylr)

Titanic <- read.csv(file="train.csv", header=TRUE, sep=",") #calling the data

names(Titanic) #names of the variables

str(Titanic) #tells a lot of things includ9ng dimensions data types and the list of possible values

summary(Titanic) #summarize the variables

#convert to categorical
Titanic$Pclass <- factor(Titanic$Pclass)
Titanic$Survived <- factor(Titanic$Survived)
Titanic$SibSp <- factor(Titanic$SibSp)
Titanic$Parch <- factor(Titanic$Parch)

#verfying with summary
summary(Titanic)
#To check for each variable 
summary(Titanic$Survived)

#bar plotting Pclass
barplot(table(Titanic$Pclass), main = "Bar plot for Pclass", xlab = "Pclass")

#bar plotting Survived
barplot(table(Titanic$Survived), main ="Bar plot for Survived", xlab = "Survived")

#how many have survived 
Titanic %>% summarise(survived_FC = sum(Survived == 1)/ n())

#Categorical to Categorical comparison
#contigency table cross tabultion of Gender and Survived
table(Titanic$Gender, Titanic$Survived)

#plot of contigency table with frequency weights
plot(table(Titanic$Gender, Titanic$Survived), main = "Survived and Gender comparison", ylab = "Survived", xlab="Gender")

#get the proportion of females who survived
Titanic %>% group_by(Survived) %>% summarise(femaleProportion = sum(Gender == "female") / sum(Titanic$Gender == "female")) 

#contigency table cross tabultion of Pclass and Survived
table(Titanic$Pclass, Titanic$Survived)

#plot of contigency table with frequency weights
plot(table(Titanic$Pclass, Titanic$Survived), main = "Survived and Parch comparison", ylab = "Survived", xlab="Parch")

#get the proportion of high classed passengers who survived
Titanic %>% group_by(Survived) %>% summarise(highClassedProportion = sum(Pclass == 1) / sum(Titanic$Pclass == 1)) 

#contigency table cross tabultion of Parch and Survived
table(Titanic$Parch, Titanic$Survived)

#plot of contigency table with frequency weights
plot(table(Titanic$Parch, Titanic$Survived), main = "Survived and Parch comparison", ylab = "Survived", xlab="Parch")

#get the proportion of passengers who had 0 parents/children
Titanic %>% group_by(Survived) %>% summarise(NoParchProportion = sum(Parch == 0) / sum(Titanic$Parch == 0)) 
