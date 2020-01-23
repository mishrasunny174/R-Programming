library(tidyverse)

#mpg miles per gallon dataframe
head(mpg)

# Basic scatter plot using ggplot with engine displacement vs highway miles
ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) + geom_point()

# Scatter plot using ggplot with number of cylenders(cyl) vs highway miles(hwy)
ggplot(data = mpg, mapping = aes(x=hwy, y=cyl)) + geom_point()

# Scatter plot using ggplot with engine displacement vs highway miles with class as color aesthetic
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) + geom_point()

