#Salary_hike -> Build a prediction model for Salary_hike
salary<-read.csv("E:\\ExcelR\\Python codes and python datasets\\Assignments in Python\\Assignment 1 - Simple Linear Regression\\Salary_Data.csv")

#EDA
colnames(salary)
summary(salary)
var(salary)
sd(salary$YearsExperience)
sd(salary$Salary)
library(moments)
skewness(salary)
kurtosis(salary)

# EDA via visualization
hist(salary$YearsExperience)
hist(salary$Salary)
plot(salary$YearsExperience,salary$Salary,col=2)
boxplot(salary$YearsExperience)
boxplot(salary$Salary)

#corellation

cor(salary)#97 % corellated

# Building the model

Model<-lm(Salary~YearsExperience,data = salary)
summary(Model)# pvalues and Rsquared values accepted

plot(salary$YearsExperience,salary$Salary,col=2)
abline(Model,lwd=5)



