# question 1
x = c(0,1,2,3,4)
px = c(0.41, 0.37, 0.16, 0.05, 0.01)

print(
  weighted.mean(x, px)
)

# question 2

f = function(t){
  (0.1 * exp(-0.1*t))*t
}

int = integrate(f, lower=0, upper=Inf)
print(int$value)

# question 3

x = c(0, 1, 2, 3)
px = c(0.1, 0.2, 0.2, 0.5)

# net revenue
# y = 12x + 2(returned) - total
# y = 12x + 2(3-x) - (6x3)

ex_y =sum((10*x - 12) * px)

print(ex_y)

# question 4
mean = integrate(
  function(x){
    x*0.5 * exp(-abs(x))
  }, 
  1, 10
)$val

smom = integrate(
  function(x){
    x^2 *0.5 * exp(-abs(x))
  },
  1, 20
)$value

var = smom - mean^2

print(mean)
print(smom)
print(var)

# question 5
f = function(y){
  (3/4)*(1/4)^(sqrt(y)-1)
}

x = c(1,2,3,4,5)
y = x^2
py = f(y)

print(py)
mean = weighted.mean(y, py)
smom = weighted.mean(y^2, py)
var = smom - mean^2

f2<- function(x) (3/4)*(1/4)^(x-1)


print(paste("Mean", mean))
print(paste("Var", var))


