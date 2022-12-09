########################################
############ Arbeitsblatt 6 ############
########################################
# packages
## Das installieren und laden von Packages ist in JACK nicht nötig
# install.packages('moments')
library(moments)

# Aufgabe 3

# Vektor 
z <- c(9,7,7,9,8,6,6,5,8,6,5,6,7,5,6,5,5,5,5,5)

# Mittelwert
mean(z)

# absoluter Kurtosisparameter
abs_ku_z <- mean( ( z - mean(z) )^4)

# Varianz 
varz <- (length(z) - 1) / length(z) * var(z)

# relativer Kurtosisparameter
rel_ku_z <- abs_ku_z / varz^2 

# zentrierter Kurtosisparameter
rel_ku_z - 3

##############################################
#Alternativer Lösungsweg

# rel.Kurtosisparameter
kurtosis(z) 

# zentrierter Kurtosisparameter
kurtosis(z) - 3 

##############################################
################ Aufgabe 4 ###################
##############################################
z1 <- c(rep(5,30), 
        rep(6,25), 
        rep(7,15),  
        rep(8,20),  
        rep(9,10))

# shorter
z1 <- c(rep(c(5, 6, 7, 8, 9),
            c(0.3, 0.25, 0.15, 0.2, 0.1)*100)
        ) 

# rel.Kurtosisparameter
kurtosis(z1) 

# zentrierter Kurtosisparameter
kurtosis(z1) - 3


