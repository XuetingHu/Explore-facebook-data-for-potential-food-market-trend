rm(list=ls())
library(stringr)
library(lubridate)
library('forecast')
library(stats)

setwd("E:/UR-Spring/Social Media/Final Project/fb")  # file "fb" contains all 60 files of the facebook posts.

######################### define a Function to get the trend of the giving word ##################################################
x<-as.Date("2010-12-01")+months(1:60)
freq<-c()
### the function is to get the precent of the post contained the giving word in all the post 
#in each month 
Word_freq<- function(word)
{
  for (j in 1:5){
    currentyear = j
    fileyear = paste("fpost-201",as.character(currentyear),"-",sep='')
    for (i in 1:12) {
      currentmonth = i
      filename = paste(fileyear, as.character(currentmonth), ".csv", sep='')
      temp<-readLines(filename)
      freq1<-length(temp[grepl(as.character(word), temp,ignore.case=TRUE, perl=TRUE)])
      freq_all<-length(temp)
      freq<-c(freq,freq1/freq_all)
    }
  }
  df<-data.frame(x,freq)
  df
} 

###################### pumpkin pie #########################################################
df<-Word_freq("pumpkin pie") 
plot(df,type="l",main="pumpkin pie")# plot using defined function 

timeseries = ts(data = df$freq,frequency=12) # time series to see the trend 
plot(timeseries)

##################### Cauliflower rice ####################################################
df<-Word_freq("Cauliflower rice") 
plot(df,type="l",main="Cauliflower rice")# plot using defined function 

timeseries = ts(data = df$freq,frequency=12) # time series to see the trend 
plot(timeseries)

##################### Vegetable Noodle ####################################################
df<-Word_freq("Vegetable noodle|veggie noodle|zoodle") 
plot(df,type="l",main="Vegetable noodle")# plot using defined function 

timeseries = ts(data = df$freq,frequency=12) # time series to see the trend 
plot(timeseries)
