complete <- function(directory, id = 1:332) {
    
    setwd(directory)
    
    finaldata <- c()
    
    temp = list.files(pattern="*.csv")
    for (i in id) {
        data <- read.csv(temp[i], header = T)
        nobs <- sum(complete.cases(data))
        id <- data[1, 4]
        row <- c(id, nobs)
        finaldata <- rbind(finaldata, row)
    }
}

