# Chapter 2-1. tsibble Object #

# Load Library #
library('fpp3')

###################################

Y <- tsibble( 
  Year = 2015,
  Month = 1:5,
  Observation = c(123,12,134,555,122),
  index = Month
  )

print(Y)

###################################

olympic_running %>% distinct(Sex)

###################################

PBS %>% filter(ATC2 == 'A10') %>%
  select(Month, Concession, Type, Cost) %>%
  summarise(TotalC = sum(Cost)) %>%
  mutate(Cost = TotalC/1e5) -> a10

print(a10)

###################################

prison <- readr::read_csv('https://OTexts.com/fpp3/extrafiles/prison_population.csv')
prison

prison <- prison %>%
  mutate(Quarter = yearquarter(Date)) %>%
  select(-Date) %>%
  as_tsibble(key = c(State, Gender, Legal, Indigenous),
             index = Quarter)
prison

###################################