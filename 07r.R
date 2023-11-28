# QUESTION 1
n = 100
df = n - 1
sample = rt(n,df)
hist(sample, main="QUESTION 1")


# QUESTION 2
a = rchisq(100,2)
b = rchisq(100,10)
c = rchisq(100,25)

# QUESTION 3
s <- seq(-6, 6, length = 100)
df <- c(1, 4, 10, 30)
colors <- c("black", "red", "green", "blue")

plot(s, dt(s, df[4]), type = 'l', col = 'blue', main="QUESTION 3")

for (i in 1:length(df)) {
  lines(s, dt(s, df[i]), col = colors[i])
}


# QUESTION 4

## part a
print(
  qf(0.95, 10, 20)
)

## part b

print(
  pf(1.5, 10, 20)
)
print(
  1 - pf(1.5, 10, 20)
)

## part c
q = c(0.25, 0.5, 0.75,0.999)
print(
  qf(q,10,20)
)

## part d
s = rf(1000, 10, 20)
hist(s, main="QUESTION 4")




