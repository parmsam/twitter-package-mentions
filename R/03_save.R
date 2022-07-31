library(readr)
library(here)
write_rds(all_tweets, here("data", "all_tweets.RDS"))
write_rds(packageMentions, here("data", "packages.RDS"))
