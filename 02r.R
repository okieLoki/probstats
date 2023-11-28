# question 1 (a)

gold = 20
silver = 30
bronze = 50
chest = c(rep("gold", gold), rep("silver", silver),rep("bronze", bronze))

ss = sample(chest, 10)
print(ss)

# question 1 (b)

suc = 0.9
fal = 0.1

ss = sample(c('S', 'F'), 10, replace=TRUE, prob= c(suc, fal))
print(ss)


#Q2-a
#the upper bound for calculating factorial in R is till 170!
#formula->>P(A)=1 - ((365!)/(365^n)*(365-n)!)
prod=1
n = 5
for(i in 1:n-1){
  prod=prod*(1-i/365)
}
pr=1-prod
cat(pr)

# question 3

prob_cloudy=0.4
prob_rain=0.2
prob_clouds_on_rainy_day=0.85
conditional_probability=function(prob_cloudy,prob_rain,prob_clouds_on_rainy_day){
  conditional_prob=(prob_rain*prob_clouds_on_rainy_day)/prob_cloudy
  return (conditional_prob)
}
prob_rain_when_cloudy=conditional_probability(prob_cloudy,prob_rain,prob_clouds_on_rainy_day)
cat("Probability that it will rain when it's cloudy is:",prob_rain_when_cloudy)


# question 4

data = iris
print(head(data))
print(str(data))
print(mean(iris$Sepal.Length))
print(median((iris$Sepal.Length)))
print(quantile(data$Sepal.Length, 0.25))
print(quantile(data$Sepal.Length, 0.75))
print(IQR(data$Sepal.Length))
print(var(data$Sepal.Length))
print(summary(iris))

# question 5

data = c(1,2,2,3,3);

mode <- function(x) {
  frequencies <- table(x)
  max_frequency <- max(frequencies)
  modes <- unique(x[frequencies == max_frequency])
  return(modes)
}

print(mode(data))
