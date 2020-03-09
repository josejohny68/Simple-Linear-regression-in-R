# Import the data
delivery<-read.csv("E:\\ExcelR\\Python codes and python datasets\\Assignments in Python\\Assignment 1 - Simple Linear Regression\\delivery_time.csv")
# EDA - 4 moment business descisions
colnames(delivery)
# Predict delivery time(Y) using sorting time(x)
# 1st moment business descisions
summary(delivery)
#2nd moment business descions
sd(delivery$Delivery.Time)
sd(delivery$Sorting.Time)
var(delivery)
# 3rd moment business descions
library(moments)
skewness(delivery)# positively skewed
# 4th moment business descions
kurtosis(delivery)#plytokurtic

# EDA with vizualizations

hist(delivery$Delivery.Time)
hist(delivery$Sorting.Time)
plot(delivery$Sorting.Time,delivery$Delivery.Time,col=2)
boxplot(delivery$Delivery.Time)
boxplot(delivery$Sorting.Time)

# Calculating the coefficient of corellation
cor(delivery) # 82% corellated

# Building the model

model<-lm(Delivery.Time~Sorting.Time,data = delivery)
summary(model)# rsquared value is only 68%

# trying an altrenate model

model1<-lm(log(Delivery.Time)~log(Sorting.Time),data = delivery)
summary(model1)# rsquared value is 77%

# plot the best fit line
plot(log(delivery$Sorting.Time),log(delivery$Delivery.Time))
abline(model1,col=2,lwd=3)


