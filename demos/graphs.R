library(tidyverse)
library(lattice)

#mpg miles per gallon dataframe
head(mpg)

# Basic scatter plot using ggplot with engine displacement vs highway miles
ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) + geom_point()

# Scatter plot using ggplot with number of cylenders(cyl) vs highway miles(hwy)
ggplot(data = mpg, mapping = aes(x=hwy, y=cyl)) + geom_point()

# Scatter plot using ggplot with engine displacement vs highway miles with class as color aesthetic
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) + geom_point()

# Facet wraps, to divide the graphs into subgraphs based on some class here the argument is a Formula which
# is a data structure in R which defines which attribute to use to divide the graphs
# it is declared like ~ attribute
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + facet_wrap( ~ class)

# Facet grid is used to facet the plot based on two variables.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + facet_grid(drv ~ class)

# geom_smooth is a geom to create smooth lines.
ggplot(dat = mpg, mapping = aes(x=displ, y=hwy)) + geom_smooth()

# geom_smooth also accepts aesthetics to draw different lines

ggplot(dat = mpg, mapping = aes(x=displ, y=hwy)) + geom_smooth(mapping = aes(linetype=drv))
ggplot(dat = mpg, mapping = aes(x=displ, y=hwy)) + geom_smooth(mapping = aes(color=drv))

# we can overlay geoms on top of each other to display more information

ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) + geom_point() + geom_smooth()


# We have other geoms as well

ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) + geom_line() + theme_dark()
ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) + geom_jitter()

# Bar charts

ggplot(data=diamonds, mapping = aes(x=cut)) + geom_bar(mapping = aes(fill=cut)) + theme_minimal()
ggplot(data=diamonds, mapping = aes(x=cut)) + geom_bar(mapping = aes(fill=clarity), position = "dodge") + theme_minimal()

# Lattice examples

histogram( ~ cyl, data=mpg)
xyplot(displ ~ hwy, data=mpg)
