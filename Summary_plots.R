Loops

# Basic for loop structure
for (variable in sequence) {
  # Code to execute
}

# Basic while loop structure
while (condition) {
  # Code to execute
  # Update condition to avoid infinite loop
}

# Basic if-else conditions
if (condition) {
  # Code to execute if condition is TRUE
} else {
 # Code to execute if condition is FALSE
}

# Basic nested if-else statements
if (condition1) {
  if (condition2) {
  # code to execute if condition2 is true
  } else {
  # code to execute if condition2 is false
  }
  } else {
  # code to execute if condition1 is false
}

#Basic plots
library(tidyverse)   # for ggplot2
library(hrbrthemes)   # for themes
library(GGally)   # Create correlation plots
library(ggrepel)   # provides geoms for ggplot2 to repel overlapping text labels

# Basic plot formula
ggplot(data = <DATA>, mapping = aes(<mapping)) + <geom_function>()
ggplot(data = <DATA>) + <GEOM_FUNCTION>(mapping =aes(<MAPPINGS>), color = RBG1)

#1. Scatter plots
ggplot(data = data, aes(x = xAxis, y = yaxis)) + geom_point()

#2. Connected scatter points
ggplot(data, aes(x = xAxis, y = yAxis)) + geom_point() + geom_line()

#3 Correlation plots
data = data.frame(....)   # put the parts of the data you want to compare in the data
ggpairs(data)

#4 Box plot
# Variable must be converted from numeric to factor vector
ggplot(data, aes(x = xAxis, y = yAxis)) + geom_block()
#or ggplot(data) + geom_block(aes(x=xAxis, y=yAxis))

#5 Smooth lines
ggplot(data) + geom_smooth(mapping=aes(x = xAxis, y = yAxis))

#6 Labels
ggplot(data, aes(x = xAxis, y = yAxis)) + geom_point() + geom_label(data = data%>% filter(M>5 & N>3))
ggplot() + <geom_function> + labs(title = "Q", x = "X", y = "Y")

#7 
p = ggplot() + geom_line(data = var1, aes(x = x, y = Stockmarket.value), color = "blue") + xlab('Units') + ylab('percent.change')

#8 Histogram
ggplot() + geom_histogram(bins =10, fill("blue"), color = "white") + ggtitle() +labs(x=X, y=Y) + theme_classic()

#9 Line chart
ggplot(data, aes(x=X)) + geom_line()
# Add Vertical lines and text label
chart + geom_vline() + annotate()