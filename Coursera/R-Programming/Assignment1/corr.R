corr <- function(directory, threshold=0) {
  fileList <- list.files(directory)
  corelations <- vector(mode = "numeric")
  for(file in fileList) {
    df <- read.csv(file.path(directory, file))
    if(sum(complete.cases(df)) >= threshold) {
       df <- df[complete.cases(df), ]
       corelations <- append(corelations, cor(x=df$sulfate, y=df$nitrate))
    }
  }
  corelations
}