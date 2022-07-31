
<!-- README.md is generated from README.Rmd. Please edit that file -->

# twitter-package-mentions

<!-- badges: start -->
<!-- badges: end -->

## Purpose

The goal of twitter-package-mentions is to get a vector of packages
mentioned in RStudio Conf 2022 hashtagged tweets (which appear to be
case sensitive with the search API):
`"#rstudioconf", "#rstudioconf2022", "#rstudioconf22", "#RStudioConf2022", "#RstudioConf2022", "#RstudioConf", "#RStudioConf", "#RStudioConf22"`

## Limitations

Pulls from packages mentioned in tweets with hashtags listed above.
Filters for package names following the curly bracket syntax (`{dplyr}`
for example).

## Results

Packages mentioned in RStudio Conference 2022 Tweets:

``` r
packageMentions <- "c('{tidymodels}', '{bslib}', '{vetiver}', '{shinyslack}', '{lubridate}', '{ggtrace}', '{ggdist}', '{shinytest2}', '{Tplyr}', '{rtweet}', '{shinyuieditor}', '{leafdown}', '{rmarkdown}', '{patchwork}', '{tidyclust}', '{annotater}', '{gridlayout}', '{spatialsample}', '{geoarrow}', '{sfdep}', '{spdep}', '{nara}', '{eventloop}', '{audio}', '{dm}', '{renv}', '{golem}', '{rhino}', '{dbcooper}', '{ggnewscale}', '{ggplot2}', '{positron}', '{gt}', '{clock}', '{tidyowl}', '{shiny}', '{designer}', '{future}', '{WebR}', '{knitr}', '{httr2}', '{elevators}', '{scales}', '{ggirl}', '{funspotr}', '{workboots}', '{tsbox}', '{constructive}', '{usethis}', '{tidytext}', '{galah}', '{bs4Dash}')"
```

## Blog post

<https://medium.com/p/281bccee3536>
