#1. Download and unzip file
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataset_url, "Samsung.zip")
unzip("Samsung.zip", exdir = "samsung")

#2. read in all the relevant datasets
#test
setwd("~/RStudio/Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project/samsung/UCI HAR Dataset/test")
  x_test <- read.table('X_test.txt', colClasses = "character")
  y_test <- read.table('y_test.txt', colClasses = "character")
  subject_test<-read.table('subject_test.txt', colClasses = "character")
#train
setwd("~/RStudio/Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project/samsung/UCI HAR Dataset/train")
  x_train <- read.table('X_train.txt', colClasses = "character")
  y_train <- read.table('y_train.txt', colClasses = "character")
  subject_train<-read.table('subject_train.txt', colClasses = "character")

#3. merge test and train data
  x_data <- rbind(x_train, x_test)
  y_data <- rbind(y_train, y_test)
  s_data <- rbind(subject_train, subject_test)