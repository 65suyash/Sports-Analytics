library(readxl)
my_data <- read_excel('2001-2019 Orioles Historical Attendance File.xlsx', sheet = '2009to2019RStudio', range = 'A1:W877')
my_data

opponent <- my_data$Opponent
attendance <- my_data$ATTENDANCE
bobblehead <- my_data$Bobblehead
day <- my_data$Day1
promo <- my_data$`Promo/Giveaway Item/Rain-Make-up Game Note`
year <- my_data$Year

final <- lm(attendance ~ opponent + day + bobblehead + promo, data = my_data)
sink(file = "lm_2009to2019.txt")
summary(final)
sink(file = NULL)