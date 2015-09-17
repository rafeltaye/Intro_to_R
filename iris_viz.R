install.packages("ggplot2")
library(ggplot2)
head(iris)

qplot(Sepal.Length, Petal.Length, data = iris, color = Species) 

qplot(Sepal.Length, Petal.Length, data = iris, color = Species, size = Petal.Width, alpha = I(0.7))

qplot(Sepal.Length, Petal.Length, data = iris, geom = "line", color = Species)
