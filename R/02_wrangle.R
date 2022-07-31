library(dplyr)
library(stringr)
library(tidyr)
library(clipr)

pat <- "\\{[A-Za-z0-9\\.]*\\}"
tweets <- all_tweets %>%
  unique() %>%
  select(matches("text")) %>%
  select(1) %>%
  mutate(et = str_extract_all(text, pat))

packageMentions <- tweets %>%
  filter(str_detect(text, pat)) %>%
  select(et) %>%
  unnest(cols = c(et)) %>%
  unique() %>% pull()

packagesStr <- packageMentions %>%
  stringr::str_c("'", ., "', ", collapse = "") %>% # sep each element by comma
  stringr::str_sub(., 1, nchar(.) - 2) %>% # remove last 2 char
  str_c("c(", ., ")") %>% # add parentheses
  clipr::write_clip() # copy to clipboard
