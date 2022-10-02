install.packages("janitor")
library(janitor)
library(dplyr)
bank_data <- read.csv("C:/Users/Malak/Documents/CIND119/Final Project/bank_marketing/bank.csv")
colnames(bank_data)
clean_bank_data <- clean_names(bank_data)
compare_date<- data.frame(colnames(bank_data), colnames(clean_bank_data))

#analysing the data
#marital1 <- clean_bank_data %>% tabyl (marital) %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> education1 <- clean_bank_data %>% tabyl (education) %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#default1 <-clean_bank_data %>% tabyl (default)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> balance1 <- clean_bank_data %>% tabyl (balance)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> housing1 <- clean_bank_data %>% tabyl (housing)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> loan1 <- clean_bank_data %>% tabyl (loan)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> contact1 <-clean_bank_data %>% tabyl (contact)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> day1<- clean_bank_data %>% tabyl (day)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> month1 <- clean_bank_data %>% tabyl (month)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> duration1<- clean_bank_data %>% tabyl (duration)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> campaign1 <- clean_bank_data %>% tabyl (campaign)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> pdays1 <-clean_bank_data %>% tabyl (pdays)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> previous1<-clean_bank_data %>% tabyl (previous)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> poutcome1<-clean_bank_data %>% tabyl (poutcome)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> y1<-clean_bank_data %>% tabyl (y)  %>% adorn_pct_formatting(digits = 0, affix_sign = TRUE)
#> View(age1)
#> View(job1) and so on to view the complete analysis per column 
#> I found no missing values 
#> is.na(clean_bank_data)
#> 
#> DATA correlation 
#> install.packages("psych")
#> library(psych)
#> describe(clean_bank_data$day) normally distrubed since skew value is between +-1
#>  vars    n  mean   sd median trimmed   mad min max range skew kurtosis
#>X1    1 4521 15.92 8.25     16    15.8 10.38   1  31    30 0.09    -1.04
#>se
#>X1 0.12
#> Describe(clean_bank_data$campaign)
#> vars    n mean   sd median trimmed  mad min max range skew kurtosis
#>X1    1 4521 2.79 3.11      2    2.14 1.48   1  50    49 4.74    37.11
#>se
#>X1 0.05
#>describe(clean_bank_data$duration)
#>vars    n   mean     sd median trimmed    mad min  max range skew
#>X1    1 4521 263.96 259.86    185  216.44 143.81   4 3025  3021 2.77
#>kurtosis   se
#>X1    12.51 3.86
#>describe(clean_bank_data$age)
#vars    n  mean    sd median trimmed   mad min max range skew kurtosis
#X1    1 4521 41.17 10.58     39   40.48 10.38  19  87    68  0.7     0.35
#se
#X1 0.16
#> describe(clean_bank_data$balance)
#vars    n    mean      sd median trimmed    mad   min   max range skew
#X1    1 4521 1422.66 3009.64    444  802.41 658.27 -3313 71188 74501 6.59
#kurtosis    se
#X1    88.25 44.76
#> describe(clean_bank_data$pdays)
#vars    n  mean     sd median trimmed mad min max range skew kurtosis
#X1    1 4521 39.77 100.12     -1   11.56   0  -1 871   872 2.72     7.94
#se
#X1 1.49
#> describe(clean_bank_data$previous)
#vars    n mean   sd median trimmed mad min max range skew kurtosis   se
#X1    1 4521 0.54 1.69      0    0.12   0   0  25    25 5.87    51.91 0.03
> 
#>
#>
#> cor. test(x,y)
#>cor.test(clean_bank_data$age, clean_bank_data$day)
  
  #Pearson's product-moment correlation

#data:  clean_bank_data$age and clean_bank_data$day
#t = -1.2003, df = 4519, p-value = 0.2301
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
# -0.04697908  0.01130415
#sample estimates:
#        cor 
#-0.01785263 
#we cannot really correlate!
