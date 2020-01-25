library(gtrendsR)
library(tidyverse)

topic <- "Data Science"

df <- gtrends(topic, geo = c("IN", "US", "RU"), onlyInterest = T)
df <- df$interest_over_time
df$country <- ifelse(df$geo == "IN", "INDIA",
                     ifelse(df$geo == "US", "USA", 
                            "RUSSIA"))
df <- df[order(df$hits), ]

head(df)

# Interest in data science over time among different countries
ggplot(data = df, 
       mapping = aes(x = date, y = hits, color = country)) +
      geom_line() + ggtitle(sprintf("INTEREST IN (%s) OVER TIME IN VARIOUS COUNTRIES", topic))
