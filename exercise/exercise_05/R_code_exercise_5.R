########################################
############ Arbeitsblatt 5 ############
########################################

# Aufgabe 1
y <- c(1524.8, 1601.3, 1667.9, 1989.5)

(y[length(y)]/y[1])^(1/(length(y)-1))

# Aufgabe 2
x_1 <- rep(50,100)
x_2 <- rep(100, 100)
x <- c(x_1, x_2)

length(x)/sum(1/x)


# Aufgabe 2 
x <- c(rep(1, 5), rep(2, 7), rep(3, 18), 
       rep(4, 8), rep(5, 2))

# Spannweite
max(x) - min(x)

# Quantilsabstand 
quantile(x, p = 0.75, type = 1) - quantile(x, p = 0.25, type = 1)

# Varianz 
((length(x)-1)/length(x)) * var(x)

# Aufgabe 5
swimming <- c(20.6, 22, 19.8, 20.1, 21.5, 20.5)
cycling <- c(45.3, 44.7, 40.5, 49, 46.2, 47.2)
running <- c(68.1, 66.2, 69.3, 74.4, 61.2, 67.3)

s_2_swim <-((length(swimming)-1)/length(swimming)) * var(swimming)
s_2_swim
sqrt(s_2_swim)
sqrt(s_2_swim)/mean(s_2_swim)

s_2_cycling <-((length(cycling)-1)/length(cycling)) * var(cycling)
s_2_cycling
sqrt(s_2_cycling)/mean(cycling)

s_2_running <-((length(running)-1)/length(running)) * var(running)
s_2_running
sqrt(s_2_running)/mean(running)



