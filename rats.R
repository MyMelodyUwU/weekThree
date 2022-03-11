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

rats = read.csv("ratsweights.csv", header = TRUE) # First row are names
head(rats)


boxplot(weight ~ diet, data = rats,
        ylab = "Weight gain (g)", xlab = "Diet") # optional labels




