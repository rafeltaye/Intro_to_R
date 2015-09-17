install.packages("Lock5Data")
install.packages("ggplot2")
library(ggplot2)

data = read.csv("drinks.csv")
dim(data)
data[1:5,]

##Histogram ploy 
hist.ggplot <- ggplot(data, aes(x=beer_servings)) + geom_histogram(binwidth=10)
hist.ggplot

#Scatter Plot 
scatter.ggplot <- ggplot(data, aes(x=beer_servings, y=wine_servings, colour=continent)) + geom_point()
scatter.ggplot

#Line Plot
line.ggplot <- ggplot(data, aes(x=beer_servings, y=wine_servings, colour=continent)) + geom_line()
line.ggplot