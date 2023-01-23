#-----------------------------
# phys
#-----------------------------

phys <- read.csv("phys1.csv")

### sample correlation for different gender
physM <- subset(phys, Gender == "Male", data = phys)
physF <- subset(phys, Gender == "Female", data = phys)

cor.test(physM$Power1, physM$Weight)

### calculation by hand
var(physM$Weight)
var(physM$Power1)
cov(physM$Weight,physM$Power1)
cov(physM$Weight,physM$Power1) / sqrt(var(physM$Weight) * var(physM$Power1))

M.mean.Weight <- mean(physM$Weight)
M.mean.Power  <- mean(physM$Power1)

sum((physM$Weight - M.mean.Weight)^2)
sum((physM$Power1 - M.mean.Power)^2)
sum((physM$Weight - M.mean.Weight) * (physM$Power1 - M.mean.Power))

Sxx <- sum((physM$Weight - M.mean.Weight)^2)
Syy <- sum((physM$Power1 - M.mean.Power)^2)
Sxy <- sum((physM$Weight - M.mean.Weight) * (physM$Power1 - M.mean.Power))
Sxy / sqrt(Sxx * Syy)
