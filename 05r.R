# QUESTION 1

## part a: waiting time is more than 45 mins P(x>45)
print(
  1- punif(45,0,60)
)

## part b: waiting time between 20 and 30 mins P(20<x<30)
print(
  punif(30,0,60) - punif(20,0,60) 
)


# QUESTION 2

## part a
print(
  dexp(3, 0.5)
)

## part b
s = seq(0,5,0.125)
gr1 = dexp(s, 0.5)
plot(gr1)

## part c: repair takes at most 3 hour P(x<=3)
print(
  pexp(3,0.5)
)

## part d: 
gr2 = pexp(s,0.5)
plot(gr2)

## part e: 
gr3 = rexp(1000, 0.5)
plot(gr3)
plot(density(gr3))

# QUESTION 3

## part a P(x>=1)
print(
  1 - pgamma(1, shape=2, scale=1/3)
)

## part b 
print(
  qgamma(0.7,shape=2, scale=1/3)
)
