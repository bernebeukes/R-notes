#Q1
#Create two numeric vectors with 50 random samples from the normal distribution with mean 0 and variance 1 
#Compute their dot product

set.seed(123)

v1 = rnorm(50)
v2 = rnorm(50)

dot_product = (v1)%*%v2 
dot_product




#Q2
#draw a set of random samples of size 25 from a exp with mean 1
#Create a square matrix M with elements from exp choose appropriate row and column numbers
#Calculate its transpose, then compute the dot product between the transpose and M
set.seed(123)
random_samples = rexp(25)
random_samples

M = matrix(random_samples, nrow = 5)
M

transpose = t(square_matrix)
P = transpose %*% M
P

#Q3
#Call the ‘mpg’ dataset.  
#(i) Print the structure of the dataset and find how many variables and observations 
#are there in the ‘mpg’ dataset?  
 # (ii) How many of the variables in the dataset are character strings and how many 
#are integer valued variables?  
 # (iii) Now create a histogram of the ‘displ’ variable which is the engine displacement 
#in liters. Add labels for the X and Y axis as ‘Displacement’ and ‘Frequency’, 
#respectively. Also add a title for the histogram plot as ‘Histogram of the engine 
#displacement in liters’. The histogram bars should be filled with ‘blue’ color and 
#the borders should be in ‘black’. Use a ‘classic’ theme for the background.

library(tidyverse)   #We call mpg data set from the tidyverse package. 
library(hrbrthemes)

data = mpg  
str(data)  #234 observations for 11 variables: 6 = "character", 4 = integer values, 1 = numerical values. 


install.packages("ggplot2")
library("ggplot2")

display = data$displ

ggplot(data, aes( x = displ)) +
  geom_histogram(bins = 10, fill = "blue", color = "black") +
  labs(title = "Histogram of the engin displacement in litres", x = 
         "Displacement", y = "Frequency")+
  theme_classic()


#question 4
#Use the ‘dplyr’ package for the following analysis.  
#(i) 
#From the mpg dataset, create a subset of the dataset with the car models of 
#corolla, altima, jetta, maxima, pathfinder 4wd, grandprix. Use the ‘filter’ function 
#with suitable operator. 
#Use this subset data to create a barplot of the models across the manufacturers. 
#This will help you to visualize the distribution of car models within their 
#respective manufacturers. Give a title for the barplot as ‘Count of car models by 
#manufacturer’. Also provide labels for the X and Y axis as ‘Manufacturer’ and 
#‘Count’, respectively. Use a ‘minimal’ theme for the plot.  
#Which manufacturer has more variations in car models that you find from the 
#barplot?  
#Which manufacturer produces ‘grand prix’ cars? 


library(dplyr)

selected_models = c("corolla", "altima", "jetta","maxima", "pathfinder
                    4wd","grand prix")
subset_data = mpg %>%
  filter(model %in% selected_models)

library("ggplot2")

ggplot(subset_data) + 
  geom_bar(aes(x  = manufacturer, fill = model)) +
  labs( title =" Count of car models by count", x  = "Manufacturer", y = "Count") + 
  theme_minimal()

#Nissan has the highest variaty of cars
#pontiac produces the grand prox motors

#Q5
#Now use the same subset of the ‘mpg’ data,  
#Then create a boxplot for the ‘displ’ variable (Engine displacement in liters) for different 
#manufacturers. All the boxplots should be in the same plot. Use different colors for different 
#manufacturers. Provide a title of the boxplot as ‘Engine displacement for different 
#manufacturers’. Provide X and Y axis labels as ‘Manufacturer’ and ‘Engine displacement in 
#For which manufacturer, the engine displacement values are negatively skewed? 

ggplot(subset_data, aes( x = manufacturer, y = displ, fill = manufacturer)) + 
  geom_boxplot() + 
  labs( title = "Enfine displacement for different manufacturers", x ="Manufacturer", y = " Engine displacement in litres") + 
  theme_minimal()


#negatively skewed for nissan

#Q6 
# Use the ‘airquality’ dataset. Create a dataframe with the variables ‘Ozone’, ‘Solar.R’, 
#‘Temp’ from the dataset. Now create a correlation plot for these variables using the GGally 
#package. Interpret the correlation plot. 

install.packages("GGally")
library(GGally)
data("airquality")

data = data.frame(airquality$Ozone, airquality$Solar.R, airquality$Temp)
ggpairs(data)

#Strong positive correlations are evident among all the variables, suggesting that an increase 
#in one variable tends to be associated with an increase in the others. The distribution of the 
#Ozone levels shows a positive skew, while the distributions of the other two variables 
#exhibit negative skews. 

#Q7
#Write a code using a ‘for’ loop to compute the sum of all even numbers from 1 to 100. 

Sum_evens = 0

for(i in  1:100) {
  if (i %% 2 ==0 ) {
    Sum_evens = Sum_evens + i 
  }
}


#Q8
#Write a code using a ‘while’ loop to calculate the smallest multiple of 13 that is greater than 
#100.  

number = 101 #initialising starting number 
while (number %% 13 != 0) { #check if number is not multiple of  13 $$ module  divide by 
 number = number +1 
}
number








