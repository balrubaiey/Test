data <- read.csv("../Documents/R-Files/301113_week13/epiSEIHCRD_combAge.csv")
data$t <- as.Date(data$t, origin="2020-03-01")
head(data)
###
library("tidyverse")
dataJD <- data %>% filter((t>= "2020-07-01") &(t<="2020-12-31"))
library("ggplot2")
g<-ggplot(data = dataJD) +
  geom_line(mapping=aes(x=t, y=H))
print(g)
