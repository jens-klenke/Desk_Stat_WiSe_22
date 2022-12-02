########################################
############ Arbeitsblatt 4 ############
########################################

# Aufgabe 1
# a) 
quantile(iris$Sepal.Width, type = 1, p = 0.5)

# b)
which.max(table(iris$Sepal.Width))

# c)
mean(iris$Sepal.Width)

# Aufgabe 2

# c) 
summe <- 130 * 3200 + (1000 + 1800 + 5000 + 6072)
summe/134

(130 * 3200 + (1000 + 1800 + 5000 + 6072))/134

# Aufgabe 4
gas_consumption <- c(386.4, 312, 300, 194.4, 84, 52.8, 
                     40.8, 38.4, 124.8, 201.6, 292.8, 372)
# a)
mean_gas_consumption <- mean(gas_consumption)
mean_gas_consumption

# b) 
kWh <- 9.3 * 0.9103 * mean_gas_consumption
kWh