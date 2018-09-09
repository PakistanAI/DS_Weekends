library(ggplot2) #For later comparisons
library(magrittr)
library(dplyr)

Titanic <- read.csv(file="train.csv", header=TRUE, sep=",", stringsAsFactors = TRUE) #calling the data

#Can we use table for numerical variable
#hist of Age
hist(Titanic$Age, breaks =30, col= "grey", main ="Histogram of the Age variable", xlab = "Age")

#density plots to understand distribution
plot(density(Titanic$Age, adjust =0.5 ,na.rm =TRUE))

#compare with ggplot to check for NAs
ggplot(Titanic, aes(x = Titanic$Age)) + geom_histogram(binwidth =5)

# to find the missing values
summary(Titanic$Age)

# check for missing values
table(is.na(Titanic$Age))

#Box plotting to understand distribution of percentiles
boxplot(Titanic$Age, data = Titanic)

#Now lets compare Age(Numerical) with the Survived variable(categorical)
boxplot(Titanic$Age~Titanic$Survived,data=Titanic, main="Age and Survived", 
        xlab="Survived", ylab="Age")

#Age Groups and Survived
breaks <- c(0, 14, 24, 64, 80)
bins_age_groups <- cut(Titanic$Age, breaks)

#Understand the cross tabulation of age group and survived
table(Titanic$Survived,bins_age_groups)

#Barplotting with the use of legend
barplot(table(Titanic$Survived,bins_age_groups), xlab= "Age groups", col=c('blue','red'))
legend('topright', cex= 1, c('Not Survived','Survived'), fill = c('blue','red'))

#as.character
ggplot(data = Titanic, aes(x = bins_age_groups, fill = as.character(Titanic$Survived))) + geom_bar()

#with ggplot
ggplot(data = Titanic, aes(x = bins_age_groups, fill = Titanic$Survived)) + geom_bar()

#Generalized imputation
sd(Titanic$Age, na.rm = TRUE)
mean_age = mean(Titanic$Age, na.rm = TRUE)
#age imputation with mean, disadvantage mean reduces variance in the dataset, compare variance before and after
Titanic <- Titanic %>% mutate(NewAge = ifelse(is.na(Age), mean_age, Age))
#stndard deviation after Imputation
sd(Titanic$NewAge)
#age imputation grouped by gender
Titanic %>% group_by(Gender) %>% summarise(meanss = mean(Titanic$Age, na.rm=TRUE)) 
#age imputation compared with survived
Titanic %>% group_by(Gender) %>% summarise(meanss = mean(Titanic$Age, na.rm=TRUE)) 

