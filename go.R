local({r <- getOption("repos")
       r["CRAN"] <- "http://cran.r-project.org"
       options(repos=r)
})

install.packages('scales')
install.packages('leaps')
install.packages('data.table')
install.packages('reshape')
install.packages('reshape2')
install.packages('gridExtra')
install.packages('lubridate')
install.packages('xts')
install.packages('tsoutliers')
install.packages('plyr')
install.packages('dplyr')
install.packages('broom')
install.packages('car')
install.packages('openxlsx')
install.packages('mondate')
install.packages('zoo')
install.packages('gtools')
install.packages('multiwayvcov')
install.packages('lmtest')
install.packages('psych')
install.packages('randomForest')
install.packages('survival')
install.packages("foreach")
install.packages("doParallel")
install.packages("R.matlab")
install.packages("solidearthtide")
install.packages("readODS")
install.packages("xml2")

if (!require("pacman")) {install.packages("pacman")}

pacman::p_load(openxlsx  ,
               TTR       ,
               quantmod  ,
               plyr      ,
               data.table,
               zoo       ,
               stringi   ,
               lubridate ,
               tidyr     ,
               ggplot2   ,
               scales    ,
               matlabr   ,
               chron     ,
               jsonlite  ,
               knitr     ,
               markdown  ,
               rmarkdown ,
               gdata     ,
               grid      ,
               foreign,
               rio
               )
