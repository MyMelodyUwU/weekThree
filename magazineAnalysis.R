maga = read.table("maga.dat", header = TRUE)
head(maga)
means = with(maga, tapply(sentence, magazine, mean))
means
sds = with(maga, tapply(sentence, magazine, sd))
sds
# Compute sample sizes
ns = with(maga, tapply(sentence, magazine, length))
# Create data frame summary
magasummary = data.frame(n = ns, mean = means, sd = sds)
magasummary
boxplot(sentence ~ magazine, data = maga)
bartlett.test(sentence ~ factor(magazine), data = maga)
maga.aov = aov(sentence ~ factor(magazine), data = maga)
anova(maga.aov)
par(mfrow = c(1, 2))
plot(maga.aov, which = 1:2)










