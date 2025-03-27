#Basic templat for plots

##ggplot( data = (data), mapping =  eas(mappings)) + geomfunction

####Basic scatterplot
#library(ggplot)

#ggplot(data = (), aes( x= ()), y =()) +
#Geom_ponit()

#exp basic scatterplot
head(iris)
install.packages(ggplot2)
library(ggplot2)

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
   geom_point()+geom_line()

#Exp connected scatter plot

head(iris)
library(ggplot2)

ggplot(iris, aes( x= Sepal.Length, y = Sepal.Width)) + 
  geom_point( color = "maroon") + geom_line (color = "blue")

#Ading more color to your conected scatter plot

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_line (color = "blue") + geom_point (shape = 21,
                                           color = "pink",fill = "red", size = 1)
#Above code gives the shape the form of shape 21 and size of 11

#Customize general themes 
#theme_ipsum() function which is in the hrbrthemes package
#Add title with ggtile()

#exp
library(ggplot2)
install.packages(hrbrthemes)
library(hrbrthemes)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_line(color = "blue") + 
  geom_point(shape = 21, color = "black", fill = "red", size = 5) + 
  theme_ipsum () +ggtitle("Sepal length vs Sepal Width")


##GGally package is greate dor correlation plots

install.packages(GGally)
library(GGally)

data = data.frame(airquality$Ozone, airquality$Wind, 
                  airquality$Temp)
ggpairs(data)


#Boxplot

#We use a dataset called ToothGrowth
#Convert the variable dose from a numberic to a vector variable


ToothGrowth$dose <- as.factor(ToothGrowth$dose)
head(ToothGrowth)

ggplot(ToothGrowth, aes(x=dose,
                        y=len)) + 
  geom_boxplot() + geom_boxplot(notch = TRUE) #last code changes the shape

#Changing outlier color and shape of a boxplot

ggplot(ToothGrowth, aes( x = dose, y = len)) + 
  geom_boxplot(outlier.color = "red", outlier.shape =8,
               outlier.size = 4)

