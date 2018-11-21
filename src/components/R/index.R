library(plumber)
r <- plumb('app.R')
r$run(port = 8000)