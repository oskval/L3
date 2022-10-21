
library(tidyverse)
data <- read_csv("../1-data/1-sample_data.csv")
additionalFeatures <- read_csv("../1-data/3-additional_features.csv")
additionalData <- read_csv("../1-data/2-additional_data.csv")

alldata <- rbind(data, additionalData)
alldataWithAdditionFeatures <- left_join(alldata, additionalFeatures, by = 'id')


write.csv(alldataWithAdditionFeatures,"../1-data/merged.csv", row.names = TRUE)
