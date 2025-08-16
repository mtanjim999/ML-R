install.packages("ggplot2")
library(ggplot2)

head(mpg)

ggplot(mpg, aes(displ,hwy, color = class))+
  geom_point()

ggplot(mpg, aes(displ,cty, color = trans))+
  geom_point()

df = data.frame(col1 = 1:3, col2 = c(1,4,2))

ggplot(df, aes(col1, col2))+
  geom_line(size = 2, color = "red")+
  geom_point(size = 5, shape = 21, stroke = 3)

#install tidyverse
install.packages("tidyverse")
library(tidyverse)
library(gapminder)
head(gapminder)

#bar code
ggplot(gapminder, aes(continent))+
  geom_bar()

#use of pipe in ggplot
gapminder%>%
  filter(year == 1952)%>%
  ggplot(aes(continent))+
  geom_bar()
#plot population
head(gapminder)
gapminder%>%
  filter(year == 1952)%>%
  ggplot(aes(continent,pop))+
  geom_bar(stat = "identity")
#not using bar function
gapminder%>%
  filter(year == 1952)%>%
  ggplot(aes(continent,pop))+
  geom_col()

#stacked bar
gapminder%>%
  filter(year >= 1952 & year <= 1970)%>%
  ggplot(aes(year,pop))+
  geom_bar(stat = "identity", aes(fill = continent))

#boxplot
ggplot(gapminder, aes(continent, lifeExp))+
  geom_boxplot()
#violin plot
ggplot(gapminder, aes(continent, lifeExp, fill = continent))+
  geom_violin(draw_quantiles = c(.25, .5, .75))

#jitter
ggplot(gapminder, aes(continent, lifeExp))+
  geom_jitter(alpha = .2)+
  geom_violin(draw_quantiles = c(.25, .5, .75))

#facet
ggplot(gapminder, aes(lifeExp, gdpercap))+
  geom_point() +
  facet_grid(.~continent)
#facet_warp()

#coordinate flip
ggplot(gapminder, aes(continent, lifeExp))+
  geom_boxplot()+
  coord_flip()
# theme change
ggplot(gapminder, aes(continent, lifeExp, fill = continent))+
  geom_boxplot()+
  theme_bw()+
  theme_classic()+
  theme_dark()






  


