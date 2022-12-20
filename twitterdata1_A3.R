install.packages(c("rtweet", "ggplot2", "igraph", "tidyverse", "ggraph"))
install.packages("academictwitteR")
install.packages("tidytext")
install.packages("wordcloud")
install.packages("tidytags")


library(rtweet)
library(igraph)
library(tidyverse)
library(ggraph)
library(data.table)
library(tidytext)
library(wordcloud)
library(tidytags)

# Set up authentication using own Twitter account

require(rtweet)
token <- rtweet::create_token(
  app = "",
  consumer_key <- "",
  consumer_secret <- "",
  access_token <- "",
  access_secret <- "")

## Check token

rtweet::get_token()

rtweet::auth_get()


# will save credentials to local drive as default.rds
auth_setup_default()


require(academictwitteR)
#set_bearer()
get_bearer() # Check bearer token


## 1a. Use your developer account to extract Joe Biden's tweets in last three months
get_user_id("JoeBiden", get_bearer())

# Step 2. Get tweet data by author id
get_user_timeline("939091",
                  start_tweets = "2021-01-01T00:00:00Z", 
                  end_tweets = "2021-12-31T00:00:00Z",
                  bearer_token = get_bearer(),
                  data_path = "biden21/",
                  file ="twt_biden21",
                  n = 10000)

# Step 3. Bind json data into data frame
bidentwt21 = bind_tweets(data_path = "biden21/", user = TRUE, output_format = "tidy")


write.csv(bidentwt21, "C:/Users/Gaurav Shekhar/Dropbox/UT Dallas/PhD/Fall 2022/EPPS 6302/Assignments/data.csv", row.names=FALSE)


#1b i. Most Likes
max(bidentwt21[["like_count"]])


#1b ii. Most Likes
max(bidentwt21[["retweet_count"]])

#1b iii. Most Likes
max(bidentwt21[["quote_count"]])
