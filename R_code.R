#-----------------------------
# phys
#-----------------------------

phys <- read.csv("phys1.csv")

### sample correlation for different gender
physM <- subset(phys, Gender == "Male", data = phys)
physF <- subset(phys, Gender == "Female", data = phys)

cor.test(physM$Power1, physM$Weight)



#---------------------------------------------------------------------------------
#---------------------------------------------------------------------------------
# Nicholas Cage films and people drowning

Cage <- read.csv("Cage.csv")

names(Cage)

plot(NumDrowned ~ NumFilms, data = Cage, xlab = "Number of films",
     ylab = "Number of people who drowned in pools", pch = 16)

cor.test(Cage$NumDrowned, Cage$NumFilms)

#---------------------------------------------------------------------------------
