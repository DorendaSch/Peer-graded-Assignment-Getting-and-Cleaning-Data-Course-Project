# Getting and Cleaning Data, Course Project

## Modifications
### The original dataset, which was a zipfile, was modified by:
- Unzipping the zipfile and extracting the relavant test and train datasets
- Merging the train and test data
- Extracting the feature and activity label information
   - From this, only the measurements on the mean and standard deviation for each measurement were extracted
   - This was merged to the already merged test/train dataset
- Columns and activity names were labeled descriptively
- Last, an independent tidy data set was created with the average of each variable for each activity and each subject

## Descriptions of variables/columns

### Identifiers

The first two columns are Identifiers:

- subjectID: the ID number of the subject that performed the activity
- Activity: the name of the Activity the subject performed during the measurement

### Measurements

#### Of each measurement, the mean and standard deviation were extracted, and those were averaged for each activity and each subject (as described above). Below the list of measurements, a more detailed description is given about the experiment and its measurements.

  - tBodyAccMeanX
  - tBodyAccMeanY
  - tBodyAccMeanZ
  - tBodyAccStdX
  - tBodyAccStdY
  - tBodyAccStdZ
  - tGravityAccMeanX
  - tGravityAccMeanY
  - tGravityAccMeanZ
  - tGravityAccStdX
  - tGravityAccStdY
  - tGravityAccStdZ
  - tBodyAccJerkMeanX
  - tBodyAccJerkMeanY
  - tBodyAccJerkMeanZ
  - tBodyAccJerkStdX
  - tBodyAccJerkStdY
  - tBodyAccJerkStdZ
  - tBodyGyroMeanX
  - tBodyGyroMeanY
  - tBodyGyroMeanZ
  - tBodyGyroStdX
  - tBodyGyroStdY
  - tBodyGyroStdZ
  - tBodyGyroJerkMeanX
  - tBodyGyroJerkMeanY
  - tBodyGyroJerkMeanZ
  - tBodyGyroJerkStdX
  - tBodyGyroJerkStdY
  - tBodyGyroJerkStdZ
  - tBodyAccMagMean
  - tBodyAccMagStd
  - tGravityAccMagMean
  - tGravityAccMagStd
  - tBodyAccJerkMagMean
  - tBodyAccJerkMagStd
  - tBodyGyroMagMean
  - tBodyGyroMagStd
  - tBodyGyroJerkMagMean
  - tBodyGyroJerkMagStd
  - fBodyAccMeanX
  - fBodyAccMeanY
  - fBodyAccMeanZ
  - fBodyAccStdX
  - fBodyAccStdY
  - fBodyAccStdZ
  - fBodyAccMeanFreqX
  - fBodyAccMeanFreqY
  - fBodyAccMeanFreqZ
  - fBodyAccJerkMeanX
  - fBodyAccJerkMeanY
  - fBodyAccJerkMeanZ
  - fBodyAccJerkStdX
  - fBodyAccJerkStdY
  - fBodyAccJerkStdZ
  - fBodyAccJerkMeanFreqX
  - fBodyAccJerkMeanFreqY
  - fBodyAccJerkMeanFreqZ
  - fBodyGyroMeanX
  - fBodyGyroMeanY
  - fBodyGyroMeanZ
  - fBodyGyroStdX
  - fBodyGyroStdY
  - fBodyGyroStdZ
  - fBodyGyroMeanFreqX
  - fBodyGyroMeanFreqY
  - fBodyGyroMeanFreqZ
  - fBodyAccMagMean
  - fBodyAccMagStd
  - fBodyAccMagMeanFreq
  - fBodyBodyAccJerkMagMean
  - fBodyBodyAccJerkMagStd
  - fBodyBodyAccJerkMagMeanFreq
  - fBodyBodyGyroMagMean
  - fBodyBodyGyroMagStd
  - fBodyBodyGyroMagMeanFreq
  - fBodyBodyGyroJerkMagMean
  - fBodyBodyGyroJerkMagStd
  - fBodyBodyGyroJerkMagMeanFreq

### Explanation of the experiment, as described in the files 'features_info.txt' and 'README.txt' of the zipfile: 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
