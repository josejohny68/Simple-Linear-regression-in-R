#Build a prediction model for churnout rate
employee<-read.csv("E:\\ExcelR\\Python codes and python datasets\\Assignments in Python\\Assignment 1 - Simple Linear Regression\\emp_data.csv")
colnames(employee)
# 4 moment business descions
summary(employee)
var(employee)
sd(employee$Salary_hike)
sd(employee$Churn_out_rate)
library(moments)
skewness(employee)
kurtosis(employee)
# EDA via Visulaization
hist(employee$Salary_hike)
hist(employee$Churn_out_rate)
boxplot(employee$Salary_hike)
boxplot(employee$Churn_out_rate)
plot(employee$Salary_hike,employee$Churn_out_rate)

# Corelation
cor(employee) # corellation negative 

# Building a model

model<-lm(Churn_out_rate~Salary_hike,data = employee)
summary(model)# Rsquared and p acceptable
plot(employee$Salary_hike,employee$Churn_out_rate,col=2)
abline(model,lwd=3)
