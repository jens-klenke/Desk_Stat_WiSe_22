########################################
############ Arbeitsblatt 8 ############
########################################

# Aufgabe 1 
x <- c(4, 3, 2, 1)
n <- c(30, 35, 40, 95)

#a)
ci <- x * n / sum(x * n)
Ci <- cumsum(c(0, ci))
si<- cumsum(c(0, n))

# Konzentrationskurve: 
plot(si, Ci, type = "b", col = 'black')
abline(a = 0, b = 1/200, col = 'blue')

#b)
library(ineq)
Lc(x,n)
plot(Lc(x,n))

# Aufgabe 2 
x <- c(120, 15, 40, 20, 5)
sort_x <- sort(x, decreasing = TRUE)
cj <- sort_x/sum(sort_x)

#a) Herfindahl-Index
sum(cj^2)
# einfacher mit ineq Packag
library(ineq)
Herfindahl(x)

# Aufgabe 3
x_3 <- c(5,15,20,20,40)

#ohne "ineq" Paket
cj <- x_3 / sum(x_3)
DG <- (2 * sum(cj*(1:length(x_3)))-1)/length(x_3) -1
DG
# normierter Gini-Koeffizient
DG*length(x_3)/(length(x_3) - 1)

# mittels ineq Package 
# unnormierter Gini-Koeffizient
Gini(x1) 

# normierter Gini-Koeffizient
Gini(x1, corr = TRUE)
