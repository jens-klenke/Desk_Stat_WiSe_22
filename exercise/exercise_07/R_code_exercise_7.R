########################################
############ Arbeitsblatt 7 ############
########################################
# packages
library(moments)

# Aufgabe 1
choose(3, 2)

# Aufgabe 2 
x <- c(6.9, 10.9, 5.8, 18.0, 11.6, 5.9, 12.4, 13.7, 12.9, 8.5, 
       17.6, 11.9, 6.9, -1.1, 15.6, 9.8, 9.9, 14.7, 14.1, 13.0, 
       14.6, 13.9, 10.4, 0.1, 13.1, 9.7, 9.2, 2.6, 7.6, 12.1, 
       16.8, 9.5, 11.9, 9.7, 3.1, 7.9, 8.0, 9.7, 15.5, 13.8)

mean_x <- mean(x)
n <-length(x)
sx <- sqrt(((n-1)/n)*var(x))

mean( ((x - mean_x)/sx)^10)

# Aufgabe 3 # rel
sch <- c(9, 7, 7, 9, 8, 6, 6, 5, 8, 6, 
         5, 6, 7, 5, 6, 5, 5, 5, 5, 5)

mean(sch)

sd_sch <- sqrt((length(sch) - 1)/ length(sch) * var(sch))
abs_sch <- mean((sch - mean(sch))^3)
rel_sch <- abs_sch/ sd_sch^3

# moments
moments::skewness(sch)

# Aufgabe 4 
x <- rep(c(5, 6, 7, 8, 9), 
         c(0.3, 0.25, 0.15, 0.2, 0.1)*100)

n <- length(x)
sdx <- sqrt((n - 1)/n * var(x))

schiefe <- mean((x - mean(x))^3)
rel.Schiefe <- schiefe/sdx^3

#berechnet rel. Schiefeparameter
skewness(x)

# Aufgabe 5
x <- 2:7
n <- c(1,2,2,5,6,2)

#Stabdiagramm: 
plot(x, n, type = "h", cex = 2, lwd = 2.5, col = 'steelblue')
# Verteilung ist linksschief/rechtssteil

xx <- rep(x, n)
mean(xx)
quantile(xx, p = 0.5, type = 1)
table(xx)

