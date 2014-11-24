pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    setwd(directory)
    
    subdata <- c()
    
    temp = list.files(pattern="*.csv")
    for (i in id) {
        data <- read.csv(temp[i], header = T)
        data2 <- data[[pollutant]]
        subdata <- c(subdata, data2)
        rm(data, data2)
    }
    
    mean(subdata, na.rm = T)
}
