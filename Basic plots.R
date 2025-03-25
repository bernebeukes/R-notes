#Basic Scatter plot

# Load ggplot2 package
library(ggplot2)

# Create sample data
data <- data.frame(x = rnorm(50), y = rnorm(50))

# Scatter plot
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot", x = "X values", y = "Y values")

#Line Plot

# Create sample data
data <- data.frame(x = 1:10, y = (1:10)^2)

# Line plot
ggplot(data, aes(x = x, y = y)) +
  geom_line(color = "red", size = 1.5) +
  labs(title = "Line Plot", x = "X values", y = "Y values (X^2)")

#Histogram
library(ggplot2)
# Create sample data
data <- data.frame(values = rnorm(1000))

# Histogram
ggplot(data, aes(x = values)) +
  geom_histogram(binwidth = 0.1, fill = "green", color = "black") +
  labs(title = "Histogram of Random Data", x = "Value", y = "Frequency")

#Barplot
library(ggplot2)
# Create sample data
data <- data.frame(category = c("A", "B", "C", "D", "E"),
                   count = c(5, 10, 15, 20, 25))

# Bar plot
ggplot(data, aes(x = category, y = count)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Bar Plot of Categories", x = "Category", y = "Count")

#Pie chart
library(ggplot2)

# Create sample data
data <- data.frame(category = c("A", "B", "C", "D"),
                   count = c(25, 40, 15, 20))

# Pie chart
ggplot(data, aes(x = "", y = count, fill = category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +  #Transforms the barchart into a pie chart 
  labs(title = "Pie Chart Example") +
  theme_void()

#Face plot
library(ggplot2)
# Create sample data
data <- data.frame(x = rep(1:10, 2),
                   y = c((1:10)^2, (1:10)^3),
                   group = rep(c("A", "B"), each = 10))

# Facet plot
ggplot(data, aes(x = x, y = y)) +
  geom_line(aes(color = group), size = 1.5) +
  facet_wrap(~ group) +  # Create a subplot for each group
  labs(title = "Facet Plot", x = "X values", y = "Y values") +
  theme_minimal()

