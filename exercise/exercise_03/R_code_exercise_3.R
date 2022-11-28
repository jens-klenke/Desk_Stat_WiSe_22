########################################
############ Arbeitsblatt 3 ############
########################################

####### Aufgabe 1
# Vektor
X <- c(9, 7, 7, 9, 8, 6, 6, 5, 8, 6, 5, 6, 7, 5, 6, 5, 5, 5, 5, 5)

# a)
# Bestimmung der abs. und rel. Häufigkeiten
table(X)
table(X)/length(X)

# Bestimmung der abs. Häufigkeitssummenfunktion
cumsum(table(X))

# Bestimmung der empirischen Verteilungsfunktion
cumsum(table(X)/length(X))
#Befehl für die emp. Verteilungsfunktion
B <- ecdf(X)

# b)
plot(ecdf(X))

# d)
# 0.5-Quantil
sort(X)[10]
quantile(X, probs = 0.5, type = 1)
# 0.4-Quantil
quantile(X, probs=0.4, type = 1)
# 0.3-Quantil
quantile(X, probs = 0.3, type = 1)

####### Aufgabe 2 

# laden des Datensatzes
# Hinweis: Die Daten und das Skript (dieses Dokument) 
# muss im selben Ordner gespeichert sein. 
load('hotel_stars.RData')

# Bestimmung der abs. und rel. Häufigkeiten
table(hotel_stars)
table(hotel_stars)/length(hotel_stars)
# gerundet 
round(table(hotel_stars)/length(hotel_stars), 2)

# Bestimmung der abs. Häufigkeitssummenfunktion
cumsum(table(hotel_stars))

# Bestimmung der empirischen Verteilungsfunktion
cumsum(table(hotel_stars)/length(hotel_stars))

round(cumsum(table(hotel_stars)/length(hotel_stars)), 2)

#Befehl für die emp. Verteilungsfunktion
ecdf_stars <- ecdf(hotel_stars)

# b)
plot(ecdf_stars)

# c) 
which.max(table(hotel_stars))

# d) 
quantile(hotel_stars, p = 0.5, type = 1)

# e) 
# Dezile
quantile(hotel_stars, p = seq(0, 1, 0.1), type = 1)

# Perzentile
quantile(hotel_stars, p = seq(0, 1, 0.01), type = 1)


