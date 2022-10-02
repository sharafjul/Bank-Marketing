#read the dataset
bank_marketing <- read.csv("/Users/preciousime/Documents/school/CIND119/Final Project/bank.csv", sep = ",", stringsAsFactors = F)
bank_marketing

#Find max, min, mean and standard deviation of attributes.

#min, max and mean
summary(bank_marketing)

#standard deviation
sd(bank_marketing$age)
sd(bank_marketing$balance)
sd(bank_marketing$day)
sd(bank_marketing$duration)
sd(bank_marketing$campaign)
sd(bank_marketing$pdays)
sd(bank_marketing$previous)

#Analyze the distribution of numeric attributes (normal or other). Plot histograms for
#attributes of concern and analyze whether they have any influence on the class
#attribute.
hist(bank_marketing$age, freq = F, breaks = 50) #right-skewed / normal
hist(bank_marketing$balance, freq = F, breaks = 50) #normal
hist(bank_marketing$day, freq = F, breaks = 50) #normal
hist(bank_marketing$duration, freq = F, breaks = 50) #right-skewed
hist(bank_marketing$campaign, freq = F, breaks = 50) #right-skewed
hist(bank_marketing$pdays, freq = F, breaks = 50) #right-skewed
hist(bank_marketing$previous, freq = F, breaks = 50) #right-skewed

#?how do you know if each attribute has an influence on the class from the distribution?

#Which attributes do you think can be eliminated or included in the analysis? This can
#be a subjective decision or an objective decision based on a statistical method.
