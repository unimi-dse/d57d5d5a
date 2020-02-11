import <- function(){

  install.packages("devtools") #installation of package devtools
  install.packages("roxygen2") #installation of roxygen 2
  library(roxygen2) #require roxygen 2
  library(tidyverse) #calling the package tidyverse
  library(devtools) #calling the package devtools
  data(msleep) #choosing the data
  write.csv(msleep, file = 'msleep.csv') #export to csv file
  x <- read.csv('msleep.csv') #call the file
  x #view the data
  names(x) #view the variables
  head(x) #view the first six elements of the dataset
  tail(x) #view the last six elements of the dataset
}

import()

visualanalysis1 <- function(){

  (ggplot2::msleep) #creation of a data frame
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = vore, y = awake)) #plot of awakeness related to vore
}
visualanalysis2 <- function(){
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = conservation, y = awake)) #plot of awakeness related to conservation
}
visualanalysis3 <- function(){
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = vore, y = awake, color = order)) #plot with colours related to the order
}

visualanalysis4 <- function(){
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = conservation, y = awake, shape = vore)) #plot with different shapes related to vore
}
visualanalysis1()
visualanalysis2()
visualanalysis3()
visualanalysis4()

depanalysis <- function(){
  lmawake = lm(awake~conservation, data = msleep) #creating a linear regression analysis between the variables vore and awake
  summary(lmawake) #visualization of the regression
  plot(lmawake) #plot of the linear regression
}

depanalysis()
depanalysis2 <- function(){lmawakeadvance = lm(awake~conservation + vore, data = msleep) #regression adding the variable vore
summary(lmawakeadvance) #visualization of the regression
plot(lmawakeadvance) #plot of the second linear regression
}
depanalysis2()
depanalysis3 <- function(){lmsleeptotal = lm(sleep_total~vore, data = msleep) #regression between the hours of total sleep and vore
summary(lmsleeptotal) #visualization of the regression
plot(lmsleeptotal)    #plot of the linear regression
}
depanalysis3()

library(devtools)
install_github('unimi-dse/d57d5d5a')

