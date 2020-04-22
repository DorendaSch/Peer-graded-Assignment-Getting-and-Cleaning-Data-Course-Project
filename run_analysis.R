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

#4. read in feature and activity labels data
setwd("~/RStudio/Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project/samsung/UCI HAR Dataset")
  feature <- read.table('features.txt')
  a_label <- read.table('activity_labels.txt')
  a_label2 <- as.character(a_label[,2])
  a_label[,2] <- as.character(a_label[,2])

#5. extract only mean and standard deviation for each measurement 
  selectedCols <- grep("-(mean|std).*", as.character(feature[,2]))
  selectedColNames <- feature[selectedCols, 2]  
  selectedColNames <- gsub("-mean", "Mean", selectedColNames)
  selectedColNames <- gsub("-std", "Std", selectedColNames)
  selectedColNames <- gsub("[-()]", "", selectedColNames)  

#6. extract correct data, bind, label columns desciptively
  x_data <- x_data[selectedCols]
  allData <- cbind(s_data, y_data, x_data)
  colnames(allData) <- c("subjectID", "Activity", selectedColNames)
  