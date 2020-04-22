#First the zip file is downloaded and unzipped
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataset_url, "Samsung.zip")
unzip("Samsung.zip", exdir = "samsung")

#read in all the relevant datasets as a table
setwd("~/RStudio/Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project/samsung/UCI HAR Dataset/test")
  X_test <- read.table('X_test.txt', colClasses = "character")
  Y_test <- read.table('y_test.txt', colClasses = "character")
  subject_test<-read.table('subject_test.txt', colClasses = "character")

setwd("~/RStudio/Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project/samsung/UCI HAR Dataset/train")
  X_train <- read.table('X_train.txt', colClasses = "character")
  Y_train <- read.table('y_train.txt', colClasses = "character")
  subject_train<-read.table('subject_train.txt', colClasses = "character")

