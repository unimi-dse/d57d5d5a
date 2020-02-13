
visualanalysis <- function(){
  msleep <- import()
  # plot the set of data
  gb <- ggplot2::ggplot(data = msleep) +
    geom_point(mapping = aes(x = msleep$vore, y = msleep$awake), col="yellow", alpha = 0.5) +
    ggtitle("Time spent awake according to vore")+
    theme(plot.title = element_text(hjust=0.5, size = 15))+
    xlab("vore")+
    ylab("awake")
  
  return(gb)
}