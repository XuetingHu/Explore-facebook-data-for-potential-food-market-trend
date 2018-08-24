# Mission
The issue is to detect emerging trends of food consumption from social media (Facebook posts from 2011 to 2015). <br>

In that case, our mission is to define the algorithm to tell us whether a suggested food trend is reflected in the social media data, 
draw time series of potential food trends and visual inspection for the changes in those time series.

# Data Resourse, Tool and Analysis Method
Data Resource: facebook data from 2011 - 2015 <br>
Tool: Rstudio <br>
Analysis: Text mining, Time Series, Data Visualization 

# Conclusion and Recommendation
## pumpkin pie <br>
df<-Word_freq("pumpkin pie") <br>
plot(df,type="l",main="pumpkin pie")# plot using defined function  <br>
timeseries = ts(data = df$freq,frequency=12) # time series to see the trend <br>
plot(timeseries)<br>

From the plot, which shows the word “pumpkin pie” frequency changes in the 60 months on the Facebook posts, 
We can find that “pumpkin pie” appears more times in the end of one year around Thanksgiving than other times.

## Cauliflower rice <br>
df<-Word_freq("Cauliflower rice") <br>
plot(df,type="l",main="Cauliflower rice")# plot using defined function <br>
timeseries = ts(data = df$freq,frequency=12) # time series to see the trend <br>
plot(timeseries) <br>

We can see from the plot, “Cauliflower rice” first increased around the end of 2012 to the begin of 2013. And the trend reach the highest in 2015, 
maybe because in that year, Green Giant was acquired by P&G and they expanded the cauliflower line to include the three types of cauliflower rice. 
Also, from the graph, we can find the frequency of cauliflower rice increased a lot from 2012 to 2016, which is aligned with the article “
In 2016, U.S. farmers sold $390 million worth of cauliflower, a big jump from the $239 million sales in 2012”.

## Vegetable Noodle <br>
df<-Word_freq("Vegetable noodle|veggie noodle|zoodle") <br>
plot(df,type="l",main="Vegetable noodle")# plot using defined function <br>
timeseries = ts(data = df$freq,frequency=12) # time series to see the trend <br>
plot(timeseries) <br>

We can see from the plots, vegetable noodle first increased in the middle of 2012 and it has a big jump in 2015, 
which is aligned with what the article described (vegetable noodles hit the global mainstream in the early 2015 
since Vogue launched an article about the advantages of eating Spiralizing).
