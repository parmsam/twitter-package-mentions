library(rtweet)

# assumption that the search terms in twitter api are case sensitive (https://stackoverflow.com/questions/57605674/case-sensitivity-of-search-terms-in-tweetr-package)
# list of conference hashtags
hashtags <- c(
  "#rstudioconf",
  "#rstudioconf2022",
  "#rstudioconf22",
  "#RStudioConf2022",
  "#RstudioConf2022",
  "#RstudioConf",
  "#RStudioConf",
  "#RStudioConf22"
)

all_tweets <- search_tweets2(hashtags,
                             include_rts = FALSE,
                             type = "mixed",
                             n = 10000)
