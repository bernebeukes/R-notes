# data = as.dataframe() neede for data dat is nor built into R

#Matching color to class
ggplot( data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#Matching size to class
ggplot( data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#You can also set shape to class

#Setting austetic properties mannually
#Need to set the austetic of the geom() function outside the aes()function
ggplot(data = mpg) + 
geom_point(mapping = aes(x =displ, y = hwy), color = "red")

#Adding additional variables and using the facets

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y= hwy)) +
  facet_wrap(~class, nrow = 2)

#Creating seperate histograms in a single plot for each manufacturer

ggplot(data=mpg) + 
  geom_histogram(mapping =aes(x = displ)) + 
                   facet_wrap(~ manufacturer, nrow = 3)
                 
#Toa facet your plot in the combo of two variables

ggplot(data = mpg) + 
  geom_point(mapping = aes(x =displ, y = hwy)) + 
  facet_grid(drv ~ cyl)

#only facet in row or columns use . before or after the variable name

ggplot(data = mpg) +
  geom_point(mapping = aes(x =
                             displ, y = hwy)) +
  facet_grid(. ~ cyl) #only in rowa

ggplot(data = mpg) +
  geom_point(mapping = aes(x =
                             displ, y = hwy)) +
  facet_grid(drv ~ .) only in columns

#geomsmooth
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

#Drawing different lines with geomsmooth with different line 
#with each uniques value of the variable that you map to line tyoe

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y=  hwy, linetype = drv),color = "red")
#Changing the color for each cotogary

ggplot(data = mpg) +
  geom_smooth( mapping = aes(x = displ, y =
                    hwy, color = drv),
    show.legend = FALSE)

#adding plots for different manuffcturers

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv),
              show.legend = FALSE) + 
  facet_wrap(~manufacturer)

#Displaying multiple geoms in the same plot

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg, mapping = aes( x = displ, y= hwy)) + 
  geom_point(mapping = aes(color = class)) +
  geom_smooth()

#Bar chart

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))
#histograms filled with the no of cuts


#Fill aestetic is mapped to another variable
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

# position = "dodge" places overlapping data directly next to one another

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x= cut, fill = clarity), position = "dodge")