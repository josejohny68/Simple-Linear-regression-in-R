# Importing the dataset
calories<-read.csv("E:\\ExcelR\\Python codes and python datasets\\Assignments in Python\\Assignment 1 - Simple Linear Regression\\calories_consumed.csv")
colnames(calories)
# Predict weight gained(Y) using calories consumed(x)
# EDA
# Measures of central tendency- 1st moment business decisions
summary(calories)# Mean & Median
# Measures of Dispersion- 2nd Moment Business Discisions
var(calories)
sd(calories$Weight.gained..grams.)
sd(calories$Calories.Consumed)

# Measures of Skewness- 3rd Moment business discision
library(moments)
skewness(calories)# Both the variables are right skewed

# Measures of Kurtosis- 4th Moment Business Descisions

kurtosis(calories)- #Observations of these variables are plytocurtic

# EDA Via vizualizations
  
hist(calories$Weight.gained..grams.)
hist(calories$Calories.Consumed)
plot(calories$Calories.Consumed,calories$Weight.gained..grams.)
boxplot(calories$Weight.gained..grams.)
boxplot(calories$Calories.Consumed)

# calculating the coefficient of Corellation

cor(calories) # 94% Corellated

# Building the model
model<-lm(Weight.gained..grams.~Calories.Consumed,data = calories)

# Checking the accuracy of the model
summary(model)# Model is good p values<=0.05 & R squared values = 0.88

plot(calories$Calories.Consumed,calories$Weight.gained..grams.)
abline(model,col=2,lwd=3)

# Confidence interval for the coefficients

confint(model,level = 0.99)




