#1. Download and unzip file
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataset_url, "Samsung.zip")
unzip("Samsung.zip", exdir = "samsung")

#2. Read in all the relevant datasets
#test
setwd("~/RStudio/Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project/samsung/UCI HAR Dataset/test")
  x_test <- read.table('X_test.txt')
  y_test <- read.table('y_test.txt')
  subject_test<-read.table('subject_test.txt')
#train
setwd("~/RStudio/Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project/samsung/UCI HAR Dataset/train")
  x_train <- read.table('X_train.txt')
  y_train <- read.table('y_train.txt')
  subject_train<-read.table('subject_train.txt')

#3. Merge test and train data
  x_data <- rbind(x_train, x_test)
  y_data <- rbind(y_train, y_test)
  s_data <- rbind(subject_train, subject_test)

#4. Read in feature and activity labels data
setwd("~/RStudio/Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project/samsung/UCI HAR Dataset")
  feature <- read.table('features.txt')
  a_label <- read.table('activity_labels.txt')
  a_label[,2] <- as.character(a_label[,2])

#5. Extract only mean and standard deviation for each measurement 
  selectedCols <- grep("-(mean|std).*", as.character(feature[,2]))
  selectedColNames <- feature[selectedCols, 2]  
  selectedColNames <- gsub("-mean", "Mean", selectedColNames)
  selectedColNames <- gsub("-std", "Std", selectedColNames)
  selectedColNames <- gsub("[-()]", "", selectedColNames)  

#6. Extract correct data, bind
  x_data <- x_data[selectedCols]
  allData <- cbind(s_data, y_data, x_data)

#7. Label columns and activity names desciptively 
  colnames(allData) <- c("subjectID", "Activity", selectedColNames)
  allData$Activity <- factor(allData$Activity, levels = a_label[,1], labels = a_label[,2])
  allData$subjectID <- as.factor(allData$subjectID)
  
#8. Create a final tidy data set with average of each variable for each activity and subject
  meltedData <- melt(allData, id = c("subjectID", "Activity"))
  tidyData <- dcast(meltedData, subjectID + Activity ~ variable, mean)
  
  write.table(tidyData, "./tidy_dataset.txt", row.names = FALSE, quote = FALSE)
  