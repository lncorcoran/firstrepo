library(ggplot2)
library(socviz)
library(dplyr)
library(nycflights13)

ggplot(mpg, aes(displ, hwy, color=class, size=cyl))+geom_point()

ggplot(mpg, aes(displ, hwy, color=class, size=cyl))+geom_point()+
  scale_size_continuous(range = c(0.5, 3))

ggplot(mpg, aes(displ, hwy, color=class, size=cyl))+geom_point()+
  scale_size_binned(range=c(.5,3), breaks= c(4,6,8))

ggplot(mpg, aes(x=displ, y=cty, size=displ))+geom_point(alpha =.25)+scale_size_binned(range=c(0,5), breaks= c(5))

ggplot(mpg, aes(x=displ, y=hwy, color=class, size=drv))+geom_point(alpha=.5)+
  scale_size_discrete(range=c(1,3))

ggplot(mpg, aes(x=displ, y=hwy, color=class, size=drv))+geom_point(alpha=.5)+
  scale_size_manual(values = c(1,1,3))

ggplot(mpg, aes(x=displ, y=hwy, color=class, size=class))+geom_point(alpha=.5)+
  scale_size_manual(values = c(1,3,1,1,1,3,1))

ggplot(mpg, aes(x=displ, y=hwy, color=class))+geom_point(alpha=1)+scale_color_brewer(palette="PRGn")
ggplot(mpg, aes(x=displ, y=hwy, color=class))+geom_point(alpha=1)+scale_color_viridis_d(option = "mako")

ggplot(iris, aes(Sepal.Length,Sepal.Width, color=Species, shape=Species))+geom_point()+scale_color_brewer(palette = "Set2")

ggplot(mpg, aes(displ, hwy, color=cyl, shape=drv))+geom_point(alpha=.7)+scale_color_viridis_c(option = "plasma")

ggplot(mpg, aes(displ, hwy, color=cyl, shape=drv))+geom_point(alpha=.7)+scale_color_gradient(low="turquoise",high="violet")

ggplot(iris, aes(Sepal.Length,Sepal.Width, color=Petal.Length))+geom_point()+scale_color_viridis_c(option = "rocket")

ggplot(mpg, aes(displ, hwy))+geom_point(alpha=.5)+
  scale_x_continuous(limit = c(0,10), breaks = c(0,5,10))+
  scale_y_continuous(limit=c(0,50), breaks = c(0,20, 50))

ggplot(mpg, aes(drv))+geom_bar()+scale_x_discrete(limits=c("r","f", "4"), label=c("Reverse-drive", "Forward-drive", "4-wheel Drive"))


library(tidyverse)
number_of_internet_users
library(gapminder)


ggplot()

continents<-filter(number_of_internet_users, Entity=="Europe"| Entity=="Africa"|
                   Entity=="North America"| Entity=="South America"| Entity=="Oceania")%>% 

  
ggplot(number_of_internet_users, mapping=aes(x=Year, y=`Number of Internet users`))+geom_line()

ggplot(number_of_internet_users, mapping=aes(x=Year, y=`Number of Internet users`))+geom_line(aes(color=continents
