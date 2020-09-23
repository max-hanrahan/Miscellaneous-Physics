library(ggplot2)
library(ggthemes)
drunkard <- 0 # starts at position zero
directions <- c(-1, 1) # can move fwd or backward
drunkard_data <- c(0) # initialize an empty vector

for (j in 1:5000){ # simulate the random walk 400 times
  for (i in 1:10000){
    # make the drunkard walk 10,000 steps
    drunkard <- drunkard + sample(directions, 1)}
  drunkard_data[j+1] <- drunkard # save ecah final number every time the drunkard completes the walk
}

# some ggplot2 things
df <- data.frame(x = drunkard_data)
ggplot(df, aes(x=drunkard_data)) + geom_histogram(bins = 100, fill = fivethirtyeight_pal()(3)[1]) + 
  theme_economist() + theme(text = element_text(size = 16)) +xlab("Final Number of Steps") 
# + xlim(-10000, 10000)
# uncomment the above to see a wider x-range
