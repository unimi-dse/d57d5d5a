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

visualanalaysis <- function(){

  (ggplot2::msleep) #creation of a data frame
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = vore, y = awake)) #plot of awakeness related to vore
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = conservation, y = awake)) #plot of awakeness related to conservation
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = vore, y = awake, color = order)) #plot with colours related to the order
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = conservation, y = awake, color = vore)) #plot with colours related to vore
  ggplot(msleep, aes(conservation, awake)) +
    geom_point(aes(color = vore, shape = vore)) +
    scale_colour_brewer(palette = "Blues") #plot choosing a fantasy of colours
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = conservation, y = awake, shape = vore)) #plot with different shapes related to vore
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = conservation, y = awake, alpha = vore)) #plot with another way of visualizing data
  ggplot(data = msleep) +
    geom_point(mapping = aes(x = conservation, y = awake)) +
    facet_wrap(~ vore, nrow = 2) #plot with different subgraphs for each class of animal considered
  ggplot(data = msleep) +
    geom_bar(mapping = aes(x = conservation)) #barplot of different kind of conservation and count
  ggplot(data = msleep) +
    stat_count(mapping = aes(x = vore)) #barplot of frequency vore
  ggplot(data = msleep) +
    stat_count(mapping = aes(x = conservation)) #barplot of frequency of conservation
  ggplot(data = msleep) +
    geom_bar(mapping = aes(x = conservation, colour = conservation))+scale_colour_brewer(palette = "Blues") #barplot of conservation with a scale of colours
  ggplot(data = msleep) +
    geom_bar(mapping = aes(x = vore, colour = vore)) #barplot of frequency vore with colours
  ggplot(data = msleep) +
    geom_bar(mapping = aes(x = vore, fill = vore)) #another way of visualizing barplot
  ggplot(data = msleep) +
    geom_bar(mapping = aes(x = vore, fill = conservation)) #barplot related to two variables
  ggplot(data = msleep) +
    geom_bar(mapping = aes(x = vore, fill = conservation), position = "fill") #another visual analysis
  ggplot(data = msleep, mapping = aes(x = vore, fill = conservation)) +
    geom_bar(alpha = 1/5, position = "identity") #another plot to visualize data
  ggplot(data = msleep, mapping = aes(x = vore, colour = conservation)) +
    geom_bar(fill = NA, position = "identity") #data visualization with another fantasy
  ggplot(data = msleep) +
    geom_bar(mapping = aes(x = vore, fill = conservation), position = "dodge") #another alternative way of visualize data

}

depanalysis <- function(){
  lmawake = lm(awake~conservation, data = msleep) #creating a linear regression analysis between the variables vore and awake
  summary(lmawake) #visualization of the regression
  plot(lmawake) #plot of the linear regression
  lmawakeadvance = lm(awake~conservation + vore, data = msleep) #regression adding the variable vore
  summary(lmawakeadvance) #visualization of the regression
  plot(lmawakeadvance) #plot of the second linear regression
  lmsleeptotal = lm(sleep_total~vore, data = msleep) #regression between the hours of total sleep and vore
  summary(lmsleeptotal) #visualization of the regression
  plot(lmsleeptotal)    #plot of the linear regression
}
