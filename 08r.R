# i
data = read.csv('/home/uddeepta/Downloads/Clt-data.csv')

# ii
print(dim(data))
print(head(data, 10))

# iii 
mean = mean(data$Wall.Thickness)
cat("Mean of dataset: ", mean, '\n')
hist(data$Wall.Thickness, col='pink', main='Histogram')

# iv
abline(v=mean, col='red')

# v
meanArr = c()
for (i in 1:300){
  meanArr[i] = mean(sample(data$Wall.Thickness, 10, replace=TRUE))
}
hist(meanArr)

# vi
meanArr50 = c()
meanArr500 = c()
meanArr9000 = c()

for (i in 1:300){
  meanArr50[i] = mean(sample(data$Wall.Thickness, 50, replace=TRUE))
  meanArr500[i] = mean(sample(data$Wall.Thickness, 500, replace=TRUE))
  meanArr9000[i] = mean(sample(data$Wall.Thickness, 9000, replace=TRUE))
}

par(mfrow=c(1,3))
hist(meanArr50, main='50 sample size')
hist(meanArr500, main='500 sample size')
hist(meanArr9000, main='9000 sample size')



