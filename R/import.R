import <- function(){
 #choose data from a csv file
  msleep <- read.csv(system.file("extdata", "msleep.csv", package = "mammals"), sep=",")
  return(msleep)
}











