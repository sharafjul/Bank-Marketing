project <- read.csv("/Users/administrator/Desktop/Ryerson/CIND 119/Final Project/bank_marketing/bank.csv",
                     sep = ",",
                     stringsAsFactors = F,
                     na.strings = c("","NA"))

str(project)

summary(project)

head(project)

#3 Determine any outlier values (records) for each of the attributes or attributes under
#consideration (min, max, std. dev, scatter plots, box plots or others can be used)

#age
summary(project$age)
boxplot.stats(project$age)$out
boxplot(project$age,
        ylab = "age"
)

#balance
summary(project$balance)
boxplot.stats(project$balance)$out
boxplot(project$balance,
        ylab = "balance"
)

#day???
summary(project$day)
boxplot.stats(project$day)$out
boxplot(project$day,
        ylab = "day"
)

#duration
summary(project$duration)
boxplot.stats(project$duration)$out
boxplot(project$duration,
        ylab = "duration"
)

#campaign
summary(project$campaign)
boxplot.stats(project$campaign)$out
boxplot(project$campaign,
        ylab = "campaign"
)

#pdays 
summary(project$pdays )
boxplot.stats(project$pdays )$out
boxplot(project$pdays ,
        ylab = "pdays "
)

#previous 
summary(project$previous  )
boxplot.stats(project$previous )$out
boxplot(project$previous  ,
        ylab = "previous  "
)