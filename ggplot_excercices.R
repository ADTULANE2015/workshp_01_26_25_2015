install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

# Load Libraries
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")
head (iris)
irsis [1:2, ]
iris [1:2, ]
df <- melt (iris, id.vars ="Species")
df [1:2, ]
library(ggplot2)
library(plyr)
library(ggthemes)
library(reshape2)
df <- melt(iris, id.vars ="Species")
myplot <- ggplot(data = iris, aes(x- Sepal.Length, y = Sepal.Width))
myplot <- ggplot (data = iris, aes(x- Sepal.Length, y = Sepal.Width))
+ geom_point()

ggplot (data = iris, aes(x- Sepal.Length, y = Sepal.Width))
+ geom_point()
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point()
library(ggplot2)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point()
myplot <- ggplot (data = iris, aes(x- Sepal.Length, y = Sepal.Width))
myplot + geom_point()
ggplot(data = iris, aes(Sepal.Length,Sepal.Width, color = Species)) + 
  geom_point(size =3)
ggplot(data = iris, aes(Sepal.Length,Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species), size =3)
# why aes (shape = species)?
# Excercise Make a small sample of the diamonds dataset d2 <-diamonds[sample(1:dim(diamonds)[1], 1000), ]
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
ggplot(data = diamonds, aes(x = carat, y = price)) + 
  geom_point()
ggplot(data = diamonds, aes(carat,price, color = color)) + 
  geom_point(size =1)
ggplot(data = d2, aes(x = carat, y = price)) + 
  geom_point()
ggplot(data = d2, aes(carat,price, color = color)) + 
  geom_point(size =1)
#learning Boxplots
library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
myplot <-ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
summary(myplot)
ggplot(data = iris, aes(Sepal.Length,Sepal.Width, color = Species)) + 
  geom_point() +
  facet_grid(Species ~ .)
ggplot(data = iris, aes(Sepal.Length,Sepal.Width, color = Species)) + 
  geom_point() +
  facet_grid(. ~ Species) # reverasl from above
ggplot(data = iris, aes(Sepal.Length,Sepal.Width, color = Species)) + 
  geom_point() +
  facet_grid( ~ Species) # notice the lack of dot
aes(color = variable) # mapping
color = Black # setting
#or add it as a scale
scale_fill_manuall(values =c("color1", "color2")) # say you want to set to black white and grey because color figures are expensive
library(RColorBrewer)
display.brewer.all()  
df <-melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette = "Set1")
#http://tools.medialab.sciences-po.fr/iwanthue//
library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + 
  geom_boxplot(width= 0.2)+
  scale_y_continous(labels = (paste0(1:4, "Kg"))) # incomplete
h <- ggplot(faithful, aes(x = waiting))
h+ geom_histogram(binwidth =30, color = "black")
h <- ggplot(faithful, aes(x = waiting))
h+ geom_histogram(binwidth = 8, fill = "steelblue", color = "black")

ggplot (iris, aes(Species, Sepal.Length)) 
+ geom_bar (stat ="identity")
df <-melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat ="identity")
ggplot(df, aes(Species, value, fill = variable)) + 
  geom_bar(position ="dodge")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge")  #incomplete
# Excercise using d2 dataset generate the plot below.
#Take a quick look at data to see if it needs to be binned
count?
dex3 <-melt(d2, id.vars = "clarity")
View(iris)


ggplot(data = dex3, aes(x = clarity, y = price)) + 
  geom_point()
ggplot(dex3, aes(clarity, count, fill = variable)) + 
  geom_bar(stat ="identity")

ggplot (iris, aes(Species, Sepal.Length)) 
+ geom_bar (stat ="identity")
df <-melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat ="identity")

ggplot(d2, aes(clarity, fill= cut)) +
  geom_bar(position ="dodge")
ggplot(faithful, aes(waiting))+ 
  geom_density(fill= "blue" alpha = "0.2")  # incomplete

ggplot(data= iris, aes(Sepal.Length, Sepal. Width, colo = Species))+
  geom_point(aes (shape = Species), size=3) +
               geom_smooth(method ="lm") # incomplete

# themed plot # i did not have time to copy from slide, so not done
#create functions like yesterday
#ggsave,if plot is on your screen, if plot is assigned o an object(like in a ggplot),
#docs.ggplot2.org/current/
#R graphics cookbook
#ggplot2








  


