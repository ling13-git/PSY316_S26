library(psych)
library(lsr)

####import data####
#import data and name it train
train <- read.csv("G:/My Drive/PSY316 S25/Lab/10 paired ttest qualtrics/paired_ttest_class.csv")

####check structure####
#reformat any variables as necessary
str()

####variable type####
#what needs to be converted?

####descriptive statistics####
describe(df) #numerical variable
summary(df$variable) #factor

####paired sample ttest####
#template for paired sample ttest
#fill in the names of your variable_before, variable_after, and data to run
results<-pairedSamplesTTest(
  formula =~ variable_before + variable_after,
  data = data,
  one.sided = FALSE,
  conf.level = 0.95
)
results

results<-pairedSamplesTTest(
  formula =~  + ,
  data = ,
  one.sided = FALSE,
  conf.level = 0.95
)
results

#paired samples t-test with our data
#this looks at the difference of variable1 minus variable2
#in this case that is the before data minus the after data
#this direction reflected in the M and the t value
#change the sign if that better reflects what you are thinking about


#you can also flip the order of variables in the formula


#let's review results for interpretation and key information

####descriptives by category####
describeBy(data$variable1,data$variable2)

#by year
#how would you look at gender by year? 
#how would you get percentages
table(data$variable1,data$variable2) #this is like describeBy for frequencies. it will tell you the frequency of variable1 by variable2
table