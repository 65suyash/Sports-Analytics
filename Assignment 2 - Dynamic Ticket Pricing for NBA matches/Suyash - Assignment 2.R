library(readxl)
my_data <- read_excel(file.choose())
my_data

df <- read.table("2001-2019 Orioles Historical Attendance File.xlsx",header = TRUE)
df

library(readxl)
my_data <- read_excel('Part A - Phila 76ers Dynamic Pricing.xlsx', sheet = 'Game1', range = 'A1:K20')
my_data

firstrelation <- lm(attendance~day + opp2019 + bobblehead + promo + openingday, data = my_data)
sink(file = "lm_output.txt")
summary(firstrelation)
sink(file = NULL)

library(readxl)
my_data <- read_excel('Part A - Phila 76ers Dynamic Pricing.xlsx', sheet = 'Game1', range = 'A1:K20')
my_data

opponent <- my_data$Opponent
attendance <- my_data$ATTENDANCE
bobblehead <- my_data$Bobblehead
#weather <- my_data$Weather
#time <- my_data$Time
day <- my_data$Day1
promo <- my_data$`Promo/Giveaway Item/Rain-Make-up Game Note`
sat <- my_data$SAT.
night <- my_data$NIGHT
wsh <- my_data$WSH
openingday <- my_data$`Opening Day`
holiday <- my_data$`Holiday (Memorial Day/4th of July)`

allrel <- lm(attendance~opponent + day+ bobblehead + promo + openingday + night + holiday, data = my_data)
sink(file = "lm_alloutputwithpromo.txt")
summary(allrel)
sink(file = NULL)


oppo <- lm(attendance~opponent, data = my_data)
sink(file = "opponent.txt")
summary(oppo)
sink(file = NULL)


dayonly <- lm(attendance~promo, data = my_data)
sink(file = "promoonly.txt")
summary(dayonly)
sink(file = NULL)


library(readxl)
my_2019data <- read_excel('2001-2019 Orioles Historical Attendance File.xlsx', sheet = '2019 Only', range = 'A1:W877')
my_2019data

opponent2019 <- my_2019data$Opponent
attendance2019 <- my_2019data$ATTENDANCE
bobblehead2019 <- my_2019data$Bobblehead
month2019 <- my_2019data$Month
#weather <- my_data$Weather
#time <- my_data$Time
day2019 <- my_2019data$Day1
promo2019 <- my_2019data$`Promo/Giveaway Item/Rain-Make-up Game Note`
sat2019 <- my_2019data$SAT.
night2019 <- my_2019data$NIGHT
wsh2019 <- my_2019data$WSH
openingday2019 <- my_2019data$`Opening Day`
holiday2019 <- my_2019data$`Holiday (Memorial Day/4th of July)`
year2019 <- my_2019data$Year

all2019 <- lm(attendance2019 ~ opponent2019 + day2019 + bobblehead2019 + promo2019, data = my_2019data)
sink(file = "lm_2009to2019.txt")
summary(all2019)
sink(file = NULL)

getwd()

library(readxl)
my_mdata <- read_excel('m1.xlsx')
my_mdata

my_mdata.reg = lm(AP~Mon+Tue+Wed+Fri+Sat+Sun+S1+S2+AS, data = my_mdata)

#my_mdata.reg = lm(AP~Mon+Tue+Wed+Fri+Sat+Sun+S1+S2+AS, data = my_mdata)
summary(my_mdata.reg)

#######################################################################

library (readr)

urlfile="https://github.com/CSSEGISandData/COVID-19/blob/master/csse_covid_19_data/csse_covid_19_daily_reports_us/01-03-2021.csv"

mydata<-read_csv(url(urlfile))