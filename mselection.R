library(dplyr)
mselection <- function() {
  # retrieve data
  msleep <- import()
  #select mammals that spend more than 12 hours awake
  aw12 <- msleep%>% select(order, awake)%>%filter(awake>=12)%>%arrange(awake)
  plot <- ggplot2::ggplot(aw12, aes(x=aw12$order,y=aw12$awake))+geom_bar(stat="identity",fill="green")+labs(title="Mammals which spend more than 12 hours awake")+geom_label(aes(label="order"),size=4)
  
  return(plot)
}