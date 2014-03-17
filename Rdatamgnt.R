gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(gdURL)

gDat <- read.delim("gapminderDataFiveYear.txt")

str(gDat)
gDat

head(gDat)
tail(gDat)
names(gDat)
dim(gDat)
nrow(gDat)
ncol(gDat)
head(rownames(gDat))
length(gDat)
summary(gDat)
head(gDat)

gDat$lifeExp
summary(gDat$lifeExp)

hist(gDat$lifeExp)

class(gDat$country)
str(gDat)
levels(gDat$country)
nlevels(gDat$country)
table(gDat$country)

subset(gDat, subset = country == "Cambodia")
subset(gDat, subset = country %in% c("Cambodia", "Afganistan"))
subset(gDat, subset = year ==1952, select = c(year, country))

## get data for which life expectancy is less than 32 years
## assign it to an object
## how many rows? how many observations per coninent?

summary(gDat$lifeExp)
subset(gDat, subset = gDat$lifeExp < 32, select = c(year, country))
shortlife <- subset(gDat, lifeExp < 32)
str(shortlife)
shortlife
table(shortlife$continent)

plot(lifeExp ~ year, gDat)
plot(lifeExp ~ year, gDat, subset = country == "Rwanda")
lm(lifeExp ~ year, gDat, subset = country == "Rwanda")

mean(gDat$lifeExp)
with(gDat, mean(lifeExp))
with(subset(gDat, country == "Cambodia"), cor(lifeExp, gdpPercap))


x <- 3*4
x
is.vector(x)
length(x)
x[1]
x[2]
x[0]
x[5] <- 10
x
x <- 1:4
x^2

round(rnorm(2, mean = c(0, 100, 10000)), 2)
round(rnorm(3, mean = c(0, 100, 10000)), 2)
