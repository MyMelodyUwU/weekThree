incendat = read.csv("incentivepay.csv", header = TRUE)
head(incendat)
means = with(incendat, tapply(Items, Plan, mean))
sds = with(incendat, tapply(Items, Plan, sd))
ns = with(incendat, tapply(Items, Plan, length))
incensummary = data.frame(n = ns, mean = means, sd = sds)
incensummary
inc.aov = aov(Items ~ factor(Plan), data = incendat)

anova(inc.aov)
par(mfrow = c(1, 2))
plot(inc.aov, which = 1:2)
