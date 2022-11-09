setwd("G:/BioAge/NHANES/")

########load cardio data ###############
data <- read.csv("cardio.csv", header=T)

sub <- subset(data, data$age >=20)
x <- c(1:55080)

######## calculate sample level missing ########
for(i in c(1:55080))
{ x[i] = sum(is.na(sub[i,1:8]))
  sub[i,9] = x[i]
}
                 
nonmissCardio <- subset(sub, sub[,9] == 0)

############ load death record data ##########

dod <- read.csv("merged.Death.csv")

total <- merge(nonmissCardio, dod, by="SEQN")

reg <- lm(male[,n] ~ male$age)
sum <- summary(reg)

k <- sum$coefficients[2,1]
q <- sum$coefficients[1,1]
s <- sd(sum$residuals)
r <- sqrt(sum$r.squared)

install.packages('devtools')
install.packages("remotes")
remotes::install_github("bjb40/bioage")
library(devtools)
