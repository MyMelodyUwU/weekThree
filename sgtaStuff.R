library("tidyverse")
library("devtools")
library("glue")
library("dplyr")
library("stringr")
library("ggplot2")
library("knitr")
library("ggrepel")
library("patchwork")
library("janitor")
library("usethis")
library("roxygen2")
library("testthat")

light = read.table("light.dat", header = TRUE)
farm = read.table("farm.dat", header = TRUE)
fertile = read.table("fertile.dat", header = TRUE)

lSDOne <- sd(light$Brand1)
lSDTwo <- sd(light$Brand2)

out = t.test(light$Brand1, light$Brand2, var.equal = TRUE)
names(out)

pValue = t.test(light$Brand1, light$Brand2, var.equal = TRUE)$p.value
pValue

pValue = t.test(light$Brand1, light$Brand2, var.equal = TRUE)$p.value


# q1----------------------------------------------------

# Need of 2 sample t test on data.

# Show data summary

pValue = t.test(light$Brand1, light$Brand2, var.equal = TRUE)$p.value

# Show which tails im doing
if(pValue < 0.05) {
  print("Reject")
} else {
  print("Do Not Reject")
}
boxplot(Brand1 ~ Brand2, data = light, horizontal = TRUE)
summary(light$Brand1)
summary(light$Brand2)
mean(light$Brand1)
mean(light$Brand2)
sd(light$Brand1)
sd(light$Brand2)
stem(light$Brand1)
stem(light$Brand2)

# q2----------------------------------------------------


# Need of 2 sample t test on this set of data
attach(farm)

t.test(farm$yield ~ farm$plot, paired = TRUE)
# boxplot(farm$plot ~ farm$yield, data = farm, horizontal = TRUE)
summary(farm$yield)
summary(farm$plot)
mean(farm$yield)
sd(farm$yield)
stem(farm$yield)

# hist(yield,plot) ???

# q3 ----------------------------------------------------
t.test(fertile$nonfertile, fertile$fertile, paired = TRUE)
summary(fertile$fertile)
summary(fertile$fertile)
mean(fertile$fertile)
sd(fertile$fertile)
stem(fertile$fertile)
summary(fertile$nonfertile)
mean(fertile$nonfertile)
sd(fertile$nonfertile)
stem(fertile$nonfertile)

boxplot(fertile ~ nonfertile, data = fertile, horizontal = TRUE)




