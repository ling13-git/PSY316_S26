#this indicates a comment
####This indicates a section to index#### 

####Set-Up####
#check version of RStudio: help > Check for Updates
#check version of R: look at console > should be version 4.4.2 right now (will update)
#wrap text: code > soft wrap long lines

####Packages####
#look at packages in bottom right window
library(psych)
library(dplyr)

####Upload Data####
#bottom righthand corner Files > Upload

####Import + Check Data####
#import dataset > from text base
voice <- read.csv("~/Workspace/PSY316/PSY316_S26/Week 2: Measures/voice_clean.csv")
#copy and paste for importing in future - your path will be different

#if you want to remove an object
#rm(object)
rm()

####Recode Data####
str()

#data types: integer/numeric: number, character: text string, factor: category

#are there any reverse coded items? 

#reverse coding formula: Reverse Score = N (number of points in a scale) + 1 - Original Score
#data$itemR<- N + 1 - data$item
#if 7 points in a scale
#data$itemR<- 8-data$item

#example if we wanted to reverse code the item constructive_1
voice$constructive_1R <- 

#remove a column
#df$dv <- NULL
#remove the reverse coded column
voice$constructive_1R <- 
#remove the qualitative column, we won't use for now

  
####Descriptive####
describe()
#review components of output
#does everything look normal? 
#missing data?

####Measures####

#pull out each factor into a subset

#subset <- select(df, contains("text"))

constructive <- select(, contains(""))

#to get the internal consistency, we can look at the Cronbach's alpha
#alpha(df)
alpha()
#use raw_alpha
#does this look reliable? 

#complete this same analysis for the other 3 facets


#make a summary metric if scale meets standards
#usually we look the mean score across items on a scale (though sometimes we look at a sum)
#df$scale <- (df$item1 + df$item2 + df$item3)/number_of_items
#df$scale <- rowMeans(subset)

voice$constructive_mean1 <-
voice$constructive_mean2 <-

#complete for the other scales


#if we had missing data, to exclude it, we could remove that data
#df$scale <-rowMeans(subset, na.rm=TRUE)

####Correlations####
#within each scale - see if items are correlated
#corr.test(subset)
#let's look at constructive
corr.test()

#between scales
#select out items with mean in the name to a subset called scales
scales <- select()
#view how scale scores correlate with one another
corr.test()


#what if we put them all together in one scale, does that match the data well?
#& | symbols

#use what the same contains, in list of items to include, indexing
combined <- select(voice, contains("constructive") | contains("defensive") | contains("destructive") | contains("supportive"))
#not perfect

#select out based on columns
#names(df)
#subset <- df[row(s),column(s)]
names()
combined <- voice[]

#reliability of using one giant measure?
#alpha of all the items together
alpha()

#what is our takeaway here? what is reliable, what would you use in your study?

####Export file####
#name as LastName_Lab2
#Files > More > Export
#submit on Moodle
