#install dplyr 
install.packages("dplyr")

#load libraries
library(dplyr)
library(gapminder)

?dplyr
head(gapminder)


#extract column by 'select()'
select(gapminder, country)
select(gapminder, country, continent)
select(gapminder, -country)  #- means drop a col

#get col by partial matching of col names
select(gapminder,starts_with("c"))
select(gapminder,ends_with("p"))
select(gapminder,contains("co"))

#extract row by 'filter()'
temp = filter(gapminder,country != "Afghanistan")
temp2 = filter(gapminder,country %in% c("Afghanistan", "Australia"))
filter(gapminder, year == 1952)
temp3 = filter(gapminder, year >= 1952 , lifeExp >=40)


#pipe operator

sum(3,2) %>% mean() %>% log()


gapminder %>%
  select(country,pop) %>% 
  filter(country == "Bangladesh")

#use of mutate() function
gapminder %>%
  mutate(totalgdp = pop*gdpPercap)

#use of arrange() function
gapminder %>%
  mutate(totalgdp = pop*gdpPercap) %>%
  arrange(totalgdp) %>%  #lower value to higher
  arrange(desc(totalgdp)) # higher value to lower

