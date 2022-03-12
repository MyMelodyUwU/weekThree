library("tidyverse")
library("ggplot2")

light <- read.table("light.dat", header = TRUE)

sd(light$Brand1)
sd(light$Brand2)

summary(light)

out = t.test(light$Brand1, light$Brand2, var.equal = TRUE)
names(out)

pValue = t.test(light$Brand1, light$Brand2, var.equal = TRUE)

# My name is bob

summary(light)

# H0 is if the means are the same in our 2 sample t test.
# H1 is if the means hv significant difference


tCrit = t.test(light$Brand1, light$Brand2, var.equal = TRUE)$statistic





