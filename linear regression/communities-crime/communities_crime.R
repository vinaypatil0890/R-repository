setwd("/Users/prasadsawant/Documents/Machine Learning/R/linear regression/communities-crime")
library(ggplot2)
library(psych)
library(caret)

communities_data <- read.csv("communities.data")

summary(communities_data)

communities_data$X. <- as.numeric(communities_data$X.)
communities_data$X.[is.na(communities_data$X.)] <- mean(communities_data$X., na.rm = TRUE)

communities_data$X..1 <- as.numeric(communities_data$X..1)
communities_data$X..1[is.na(communities_data$X..1)] <- mean(communities_data$X..1, na.rm = TRUE)

communities_data$X0.36 <- as.numeric(communities_data$X0.36)
communities_data$X0.36[is.na(communities_data$X0.36)] <- mean(communities_data$X0.36, na.rm = TRUE)

communities_data$X0.18.2 <- as.numeric(communities_data$X0.18.2)
communities_data$X0.18.2[is.na(communities_data$X0.18.2)] <- mean(communities_data$X0.18.2, na.rm = TRUE)

communities_data$X0.44 <- as.numeric(communities_data$X0.44)
communities_data$X0.44[is.na(communities_data$X0.44)] <- mean(communities_data$X0.44, na.rm = TRUE)

communities_data$X0.13.2 <- as.numeric(communities_data$X0.13.2)
communities_data$X0.13.2[is.na(communities_data$X0.13.2)] <- mean(communities_data$X0.13.2, na.rm = TRUE)

communities_data$X0.94 <- as.numeric(communities_data$X0.94)
communities_data$X0.94[is.na(communities_data$X0.94)] <- mean(communities_data$X0.94, na.rm = TRUE)

communities_data$X0.93 <- as.numeric(communities_data$X0.93)
communities_data$X0.93[is.na(communities_data$X0.93)] <- mean(communities_data$X0.93, na.rm = TRUE)

communities_data$X0.03.2 <- as.numeric(communities_data$X0.03.2)
communities_data$X0.03.2[is.na(communities_data$X0.03.2)] <- mean(communities_data$X0.03.2, na.rm = TRUE)

communities_data$X0.07.2 <- as.numeric(communities_data$X0.07.2)
communities_data$X0.07.2[is.na(communities_data$X0.07.2)] <- mean(communities_data$X0.07.2, na.rm = TRUE)

communities_data$X0.1.1 <- as.numeric(communities_data$X0.1.1)
communities_data$X0.1.1[is.na(communities_data$X0.1.1)] <- mean(communities_data$X0.1.1, na.rm = TRUE)

communities_data$X0.07.3 <- as.numeric(communities_data$X0.07.3)
communities_data$X0.07.3[is.na(communities_data$X0.07.3)] <- mean(communities_data$X0.07.3, na.rm = TRUE)

communities_data$X0.02.1 <- as.numeric(communities_data$X0.02.1)
communities_data$X0.02.1[is.na(communities_data$X0.02.1)] <- mean(communities_data$X0.02.1, na.rm = TRUE)

communities_data$X0.57 <- as.numeric(communities_data$X0.57)
communities_data$X0.57[is.na(communities_data$X0.57)] <- mean(communities_data$X0.57, na.rm = TRUE)

communities_data$X0.29.2 <- as.numeric(communities_data$X0.29.2)
communities_data$X0.29.2[is.na(communities_data$X0.29.2)] <- mean(communities_data$X0.29.2, na.rm = TRUE)

communities_data$X0.1.1 <- as.numeric(communities_data$X0.1.1)
communities_data$X0.1.1[is.na(communities_data$X0.1.1)] <- mean(communities_data$X0.1.1, na.rm = TRUE)

communities_data$X0.03.1 <- as.numeric(communities_data$X0.03.1)
communities_data$X0.03.1[is.na(communities_data$X0.03.1)] <- mean(communities_data$X0.03.1, na.rm = TRUE)

communities_data$X0.06.3 <- as.numeric(communities_data$X0.06.3)
communities_data$X0.06.3[is.na(communities_data$X0.06.3)] <- mean(communities_data$X0.06.3, na.rm = TRUE)

communities_data$X0.96 <- as.numeric(communities_data$X0.96)
communities_data$X0.96[is.na(communities_data$X0.96)] <- mean(communities_data$X0.96, na.rm = TRUE)

communities_data$X0.17.1 <- as.numeric(communities_data$X0.17.1)
communities_data$X0.17.1[is.na(communities_data$X0.17.1)] <- mean(communities_data$X0.17.1, na.rm = TRUE)

communities_data$X0.06.2 <- as.numeric(communities_data$X0.06.2)
communities_data$X0.06.2[is.na(communities_data$X0.06.2)] <- mean(communities_data$X0.06.2, na.rm = TRUE)

communities_data$X0.04.2 <- as.numeric(communities_data$X0.04.2)
communities_data$X0.04.2[is.na(communities_data$X0.04.2)] <- mean(communities_data$X0.04.2, na.rm = TRUE)

communities_data$X0.9.1 <- as.numeric(communities_data$X0.9.1)
communities_data$X0.9.1[is.na(communities_data$X0.9.1)] <- mean(communities_data$X0.9.1, na.rm = TRUE)

communities_data$X0.5.2 <- as.numeric(communities_data$X0.5.2)
communities_data$X0.5.2[is.na(communities_data$X0.5.2)] <- mean(communities_data$X0.5.2, na.rm = TRUE)

communities_data$X0.14.3 <- as.numeric(communities_data$X0.14.3)
communities_data$X0.14.3[is.na(communities_data$X0.06.2)] <- mean(communities_data$X0.14.3, na.rm = TRUE)

communities_data$X0.2.2 <- as.numeric(communities_data$X0.2.2)
communities_data$X0.2.2[is.na(communities_data$X0.2.2)] <- mean(communities_data$X0.2.2, na.rm = TRUE)

communities_data$X1 <- NULL
communities_data$X0.13.1 <- NULL
communities_data$X0.13.10.4 <- NULL
communities_data$X0.13.10.41 <- NULL
communities_data$X0.13.11 <- NULL
communities_data$X0.960 <- NULL
communities_data$X0.960.37 <- NULL
communities_data$X0.960.53 <- NULL
communities_data$X0.960.55 <- NULL
communities_data$X0.960.61 <- NULL
communities_data$X0.960.63 <- NULL
communities_data$X0.960.64 <- NULL
communities_data$X0.960.73 <- NULL
communities_data$X0.960.75 <- NULL
communities_data$X0.960.81 <- NULL
communities_data$X0.960.82 <- NULL
communities_data$X0.960.84 <- NULL
communities_data$X0.960.86 <- NULL
communities_data$X0.960.88 <- NULL
communities_data$X0.961 <- NULL
communities_data$X0.17.10 <- NULL
communities_data$X0.17.10.06 <- NULL
communities_data$X0.17.10.08 <- NULL

communities_data$X0.17.10.39 <- NULL
communities_data$X0.17.10.42 <- NULL
communities_data$X0.17.10.43 <- NULL
communities_data$X0.17.10.46 <- NULL
communities_data$X0.17.10.47 <- NULL
communities_data$X0.17.10.51 <- NULL
communities_data$X0.17.10.56 <- NULL
communities_data$X0.17.10.57 <- NULL
communities_data$X0.17.10.65 <- NULL
communities_data$X0.17.10.8 <- NULL
communities_data$X0.17.10.88 <- NULL
communities_data$X0.17.11 <- NULL
communities_data$X0.06.20.2 <- NULL
communities_data$X0.06.20.23 <- NULL
communities_data$X0.06.20.24 <- NULL
communities_data$X0.06.20.26 <- NULL
communities_data$X0.06.20.28 <- NULL
communities_data$X0.06.20.3 <- NULL
communities_data$X0.06.20.31 <- NULL
communities_data$X0.06.20.32 <- NULL
communities_data$X0.06.20.42 <- NULL
communities_data$X0.06.20.44 <- NULL

summary(communities_data)

trainIndex <- createDataPartition(communities_data$X0.51.1, p = .7, list = FALSE)

trainingData <- communities_data[trainIndex, ]
testingData <- communities_data[-trainIndex, ]

trainingData[4] <- NULL
testingData[4] <- NULL

linear_model <- lm(X0.51.1 ~ ., trainingData)
summary(linear_model)

predicted <- predict.lm(linear_model, testingData)
plot(testingData$X0.51.1, predicted, col = c(1, 2), pch = c(1, 3))
cor(testingData$X0.51.1, predicted)