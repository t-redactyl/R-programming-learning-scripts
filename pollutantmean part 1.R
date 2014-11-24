pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    setwd(directory)
    
    meanvector <- c()
    
    temp = list.files(pattern="*.csv")
    for (i in id) {
        data <- read.csv(temp[i], header = T)
        mean <- mean(data[[pollutant]], na.rm = T)
        meanvector <- c(meanvector, mean)
        rm(data, mean)
    }
  
    return(mean(meanvector))
    rm(meanvector)
}


