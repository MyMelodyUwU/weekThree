x = c(10.37, 8.70, 8.52, 9.70, 9.51, 11.16, 10.76)
x = rnorm(50, mean = 100, sd = 5)

# 50 random values, where the mean is 100 and sd is 5
qqnorm(x)

u = runif(50)
qqnorm(u)

#uniform distribution u from random values

g = rgamma(50, shape = 1, scale = 10)
# 50 random values,
qqnorm(g)

b = rbinom(50, n = 100, prob = 0.3)
qqnorm(b)
