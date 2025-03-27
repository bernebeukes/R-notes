#We want to annote only cars with mpg >20 and wt >3
#First we need to change the data rownames as a real column called carname

library(tidyverse)
str(mtcars)

data = as.data.frame(mtcars)
data = data%>%rownames_to_column(var ="carName")

ggplot(data, aes(x = wt, y = mpg)) + 
  geom_point() + 
  geom_label( data = data%>%filter(mpg >20 
                                   & wt>3), 
aes(label = carName))

#Correlation plots
library(GGally)

data = data.frame(mtcars$mpg,mtcars$hp,mtcars$wt)
                  ggpairs(data)

#package ggrepel provides geoms for ggplot to repel overlabapping text labels
                  
install.packages("ggrepel")
library(ggrepel)
library(ggplot2)
dat = subset(mtcars,wt >2.75 & wt > 3.45)

dat$car = rownames(dat) ##store the row names to a variable

p = ggplot(dat, aes(wt,mpg,label = car)) +
  geom_point(color = "red")
p

p1 = p + geom_text() +
  labs(title = "geom_text()")
p1


p2 = p + geom_text_repel() + 
  labs(title = "geom_text_repel()")
p2


#Creating a line plot

#The input data frame requires at least 2 columns:
#An ordered numeric variable for the X axis
#Another numeric variable for the Y axis

#Create the data

xValue = c(1:10)

yValue = cumsum(rnorm(10)) ##returns cummulative sum of random samples

data = data.frame(xValue, yValue)

#Plot 

p =ggplot(data, aes(x =xValue,y= yValue)) + 
  geom_line()
p

library(hrbrthemes)
p + theme_ipsum()

#Custimising the plot


ggplot(data, aes(x = xValue, y= yValue)) + 
  geom_line ( color ="#69b3a2",
              size = 2, alpha = 0.9, linetype = 2) +
ggtitle("Evolution of something")

#Multiple line charts #Libraries

library(ggplot2)
library(babynames)
library(dplyr)

#Keeping only three names

str(babynames)

don = babynames %>%
  filter(name %in% c("Ashley",
                           "Patricia","Helen")) %>% 
  filter(sex =="F")

ggplot(don, aes(x = year, y = n, group = name, color = name)) + 
  geom_line()

######

