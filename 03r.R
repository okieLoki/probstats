# question 1

## method 1: using pbinom

print(pbinom(9, 12, 1/6) - pbinom(6, 12, 1/6)) # pbinom is cumulative

### or we can even calculate individually for 7, 8 and 9

print(
  pbinom(9, 12, 1/6) - pbinom(8, 12, 1/6) + 
    pbinom(8, 12, 1/6) - pbinom(7, 12, 1/6) + 
    pbinom(7, 12, 1/6) - pbinom(6, 12, 1/6)
)

## method 2: using dbinom

print(
  sum(dbinom(c(7,8,9), 12, 1/6)) # dbinom gives value at that point
)

# question 2

print(pnorm(84, 72, 15.2, lower.tail = FALSE)) # pnorm is how many values are below this

# dnorm is how often did the value occur in the distribution


# question 3

print(
  ppois(0, 5)
)

lambda = 10*5  # n * p

print(
  ppois(50, lambda) - ppois(47, lambda) # either use ppois
)

print(
  sum(dpois(c(48,49,50), lambda)) # or use dpois
)

# question 4

print(
  dhyper(3, 17, 233, 5)
)

# question 5

# a) binom distribution

# b)

x = seq(0,31)
pmf = c()

for(i in 1:length(x)){
  pmf[i] = dbinom(x[i], 31, 0.447)
}
print(pmf)
plot(x, pmf)

#c) 
cdf = c()

for(i in 1:length(x)){
  cdf[i] = pbinom(x[i], 31, 0.447)
}
print(cdf)
plot(x, cdf)

#d)

n = 31
p = 0.447
mean = n*p
var = n*p*(1-p)
stdev = sqrt(var)

print(mean)
print(var)
print(stdev)