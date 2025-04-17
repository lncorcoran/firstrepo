library(ggplot2)
view(mpg)
ggplot(mpg, mapping= aes(displ, hwy))+geom_point(mapping=aes(color=class))+geom_smooth()

#Histogram is the numerical data
#Bar Graph is categorical 

diamonds
ggplot(diamonds)+geom_bar(mapping=aes(cut, color=cut))
ggplot(diamonds)+geom_bar(mapping=aes(cut, fill=cut))
ggplot(diamonds)+geom_bar(mapping=aes(cut, fill=clarity))

#flat or things that you want done to the whole graph goes outside of aes, 
#but things you want done to the variable go inside the brackets attached to aes
ggplot(diamonds)+geom_bar(mapping=aes(cut, fill=clarity),position="fill")                       
ggplot(diamonds)+geom_bar(mapping=aes(cut, fill=clarity),position="dodge")


ggplot(data=mpg, mapping=aes(x=displ,y=hwy))+geom_point()
#^^^ is the same as this: 
ggplot(mpg, aes(displ,hwy))+geom_point()
#don't need to specify data = or x= but you have to go in the correct format order that ggplot follows 
#the first thing in the function should be data, next is mapping, and then... 

ggplot(data=mpg, mapping=aes(x=displ,y=hwy))+geom_point(mapping=aes(color=drv))
#if you want ggplot to look at certain points together as one you can also say 
ggplot(data=mpg, mapping=aes(x=displ,y=hwy))+geom_point(mapping=aes(group=drv))

ggplot(data=mpg, mapping=aes(x=displ,y=hwy))+geom_point(mapping=aes(group=drv, color=drv))
#doing color and group together is necessary but you can do that if you want 




library(nycflights13)
library(tidyverse)
flights
group_by(flights, year, month) %>% summarise(delay_each_month=mean(dep_delay))
#you're gonna get na because the mean calculated with an unknow will produce an unknown
                                                                   
group_by(flights, year, month) %>% summarise(delay_each_month=mean(dep_delay, na.rm=TRUE))

?mean
#
## Default S3 method: mean(x, trim = 0, na.rm = FALSE, ...)

group_by(flights, year, month) %>% summarise(delay_each_month=n())
#n= counts the number of items in that group, which would count the number of flights every month

?summarise
?flights
group_by(flights, year, month) %>% summarise(delay_each_month=max(dep_delay, na.rm = TRUE))

group_by(flights, carrier) %>% summarise(max_delay=max(dep_delay,na.rm=TRUE))%>% arrange(desc(max_delay))
                                                                                              
print(flights, n=20, width = Inf)                                                                                     

?table1
table1
table2
table3

group_by(table1,year)%>% summarise(total_cases=sum(cases))

ggplot(table1, mapping=aes(year,cases))+geom_point()
ggplot(table1, mapping=aes(year,cases))+geom_point()+geom_line(mapping=aes(group=country))
#which is the same as: 
ggplot(table1, mapping=aes(year,cases, group=country))+geom_point()+geom_line()



table2
filter(table2, type=="cases")
filter(table2, type=="cases")%>% ggplot(aes(year,count))+geom_point()+geom_line(aes(color=country))
#or 
filter(table2, type=="cases")%>% ggplot(aes(year,count, color=country))+geom_point()+geom_line()


table4a
