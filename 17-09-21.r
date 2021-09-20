install.packages('nycflights13')
install.packages('dplyr')
install.packages('ggplot2')
install.packages('tidyr')
library(nycflights13)
library(dplyr)
library(ggplot2)
library(tidyr)


# Bài 1: Ve do thi scatter:

data("airlines")
data("flights")

alsska <- flights[flights$carrier == "AS",]
ggplot(alsska) + geom_point(aes(x = dep_delay, y = arr_delay))+ theme_gray() 


#Bai 2: ve do thi Linegraphs:

data("weather")

data_2 <- subset(weather, weather$origin == "EWR"&
                weather$month == "1"& weather$day <=15)

ggplot(data_2) + geom_line( aes(x=time_hour, y=temp)) + theme_gray() 


#Bai 3: ve do thi Histograms:

data_3 <- weather %>%
  drop_na(temp)

ggplot(data_3) + geom_histogram(aes(temp), bins=30) + theme_gray() 


#Bai 4: ve bieu do boxplot:

ggplot(data_3) + geom_boxplot( aes(x=factor(month), y=temp)) + theme_gray() 


#Bai 5: ve bieu do barplot:

ggplot(flights) + geom_bar(aes(carrier)) + theme_gray() 







