complete <- function(directory, id=1:332) {
  finalDf <- data.frame(id=vector(), nobs=vector())
  for (i in id) {
    if(i < 10) {
      filename <- file.path(directory, paste('00', i, '.csv', sep='')) 
    } else if(i < 100) {
      filename <- file.path(directory, paste('0', i, '.csv', sep=''))
    } else {
      filename <- file.path(directory, paste( i, '.csv', sep=''))
    }
    df <- read.csv(filename)
    finalDf <- rbind(finalDf, c(i, sum(complete.cases(df))))
  }
  colnames(finalDf) <- c("id", "nobs")
  return(finalDf)
}

