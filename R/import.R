import <- function(){
 #choose data from a csv file
  msleep <- read.csv(system.file("extdata", "msleep.csv", package = "mammals"), sep=";")
  return(msleep)
}

msleep


visualanalysis <- function(){
  # retrieve data
  msleep <- read.csv(system.file("extdata", "msleep.csv", package = "mammals"), sep=";")

  # plot the set of data
  library(ggplot2)
  gb <- ggplot(data = msleep) +
    geom_point(mapping = aes(x = vore, y = awake), col="yellow", alpha = 0.5) +
    ggtitle("Time spent awake according to vore")+
    theme(plot.title = element_text(hjust=0.5, size = 15))+
    xlab("vore")+
    ylab("awake")

  return(gb)
}

gb


mselection <- function() {
  # retrieve data
  msleep <- read.csv("msleep.csv", header = TRUE, stringsAsFactors = FALSE)
  library(dplyr)
  #select mammals that spend more than 12 hours awake
  aw12 <- msleep%>% select(order, awake)%>%filter(awake>=12)%>%arrange(awake)%>%ggplot(aes(x=order,y=awake))+geom_bar(stat="identity",fill="green")+labs(title="Mammals which spend more than 12 hours awake")+geom_label(aes(label=order),size=4)

  return(aw12)
}

aw12






