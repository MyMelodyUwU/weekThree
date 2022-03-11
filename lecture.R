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

top3 = read.csv("whisky-top3.csv", header=TRUE)
whiskyFive = read.csv("whisky-top5.csv", header=TRUE)

str(whiskyThree)
attach(whiskyThree)

boxplot(Score ~ Country, data = top3,
        ylab = "Whisky Score (normalised)", xlab = "Country")
# optional labels

boxplot(Score ~ Country, data = top3,
        ylab = "Whisky Score (normalised)", xlab = "Country")
whisk.means = aggregate(Score ~ Country, mean, data = top3)
points(1:3, whisk.means$Score, pch = 4) # Add the sample means

1 - pf(4.4727, df1 = 2, df2 = 73)

pf(4.4727, df1 = 2, df2 = 73, lower.tail = FALSE)

top3.aov = aov(Score ~ Country, data = top3)
top3.aov

summary(top3.aov)

anova(top3.aov)


whiskyresid = residuals(top3.aov)
head(whiskyresid)

qqnorm(resid(top3.aov))
qqline(resid(top3.aov))

boxplot(Score ~ Country, data = top3)

top3fits = fitted(top3.aov)
head(top3fits)

plot(fitted(top3.aov), resid(top3.aov), # Minimal code this line
     xlab = "Fitted values", ylab = "Residuals",
     main = "Residuals vs Fitted") # Optional & Recommended labels

par(mfrow = c(2, 2))
plot(top3.aov)

par(mfrow = c(1, 2))
plot(top3.aov, which = 1:2)

bartlett.test(Score ~ Country, data = top3)

top2 = subset(top3, Country != "Canada") # Ignore Canada
anova(aov(Score ~ Country, data = top2))

t.test(Score ~ Country, var.equal = TRUE, data = top2)
