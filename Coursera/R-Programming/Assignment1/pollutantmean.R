pollutantmean <- function(directory, pollutant, id = 1:332) {
  finalDf <- NULL
  for (i in id) {
    if(i < 10) {
      filename <- file.path(directory, paste('00', i, '.csv', sep='')) 
    } else if(i < 100) {
      filename <- file.path(directory, paste('0', i, '.csv', sep=''))
    } else {
      filename <- file.path(directory, paste( i, '.csv', sep=''))
    }
    if(is.null(finalDf)) {
      finalDf <- read.csv(filename)
    } else {
      df <- read.csv(filename)
      finalDf <- rbind(finalDf, df)
    }
  }
  mean(finalDf[[pollutant]], na.rm = T)
}
