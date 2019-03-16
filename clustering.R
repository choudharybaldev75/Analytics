#clustering
dim(mtcars)
str(mtcars)
nrow(mtcars)
ncol(mtcars)
class(mtcars)
?mtcars
summary(mtcars)

#1
model=kmeans(mtcars$mpg, centers=3)
model
model$cluster
cbind(mtcars$mpg, model$cluster)
model$centers

#2
model2=kmeans(mtcars[,c('mpg','wt')], centers=3)
model2
model2$cluster
df2=cbind(mtcars[,c('mpg','wt')], cluster2=model2$cluster)
head(df2)
library(dplyr)
df2 %>% arrange(cluster2)

model2$centers




df=mtcars
df
head(df)
df$cyl=factor(df$cyl)
str(df)
