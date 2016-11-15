## ------------------------------------------------------------------------
#First we need to upload all the necessary packages into the working space.
#You'll notice that these need to be downloaded first, eg:
#install.packages("ggplot2")
library(ggplot2)
library(magrittr)

## ------------------------------------------------------------------------
#What does top of the dataset look like?
head(iris)#Check out the function tail() also!

#What is the structure? (str function)
str(iris)

#What are the dimensions?
dim(iris)

## ------------------------------------------------------------------------
names(iris) <- tolower(names(iris))


## ------------------------------------------------------------------------
names(iris) <- iris %>% names() %>% tolower()

## ------------------------------------------------------------------------
names(iris)
ggplot(data = iris, aes(x = sepal.length, y = sepal.width)) + 
  geom_point()

## ------------------------------------------------------------------------
ggplot(data = iris, aes(x = sepal.width, y = sepal.length)) + 
  geom_point(aes(colour = species))

## ------------------------------------------------------------------------
plot_1 <- ggplot(data = iris, aes(x = sepal.width, y = sepal.length)) + 
                geom_point(aes(colour = species))
print(plot_1)
plot_1 + geom_point(aes(colour = species), size = 3)

## ------------------------------------------------------------------------
plot_2 <- ggplot(iris, aes(species, sepal.width)) + geom_boxplot() 
print(plot_2)
plot_2 + theme_bw() + geom_jitter()

ggplot(iris, aes(species, sepal.width)) + geom_violin()


## ------------------------------------------------------------------------
ggplot(data = iris, mapping = aes(sepal.width, sepal.length)) + 
  geom_point() + 
  facet_grid(~species)

