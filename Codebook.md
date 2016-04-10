Kindly refer README.txt and features.txt files in the original dataset to learn more about the feature selection for this dataset.

The features selected for this data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

The steps followed in run_Analysis.R script to get to the final tidyData set as per the requirements of the project is as follows:

Step 1. Merge the training and the test sets to create one data set.

After setting the directory for the files, read into tables the data located in features.txt, activity_labels.txt, subject_train.txt, x_train.txt, y_train.txt, subject_test.txt, x_test.txt, and y_test.txt

Assign column names and merge to create one data set.

Step 2. Extract only the measurements on the mean and standard deviation for each measurement.

Create a logcal vector that contains TRUE values for the ID, mean and stdev columns and FALSE values for the others. Subset this data to keep only the necessary columns.

Step 3. Use descriptive activity names to name the activities in the data set

Merge data subset with the activityType table to cinlude the descriptive activity names

Step 4. Appropriately label the data set with descriptive activity names.

Use gsub function for pattern replacement to clean up the data labels.

Step 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

Per the project instructions, we need to produce only a data set with the average of each variable for each activity and subject

Data have been labelled using descriptive names.They are as follows:

prefix t is replaced by time

Acc is replaced by Accelerometer

Gyro is replaced by Gyroscope

prefix f is replaced by frequency

Mag is replaced by Magnitude

BodyBody is replaced by Body

The final product "tidy_Data.txt" file is created with the average of each variable for each activity and each subject from the original data set with the following labels:

Activity id = integer activity ID

Subject id = integer subject ID

Mean and Standard Deviation with Descriptive Data Labels:
 timeBodyAccelerometerMagnitudeMean
 timeBodyAccelerometerMagnitudeStdDev
 timeGravityAccelerometerMagnitudeMean
 timeGravityAccelerometerMagnitudeStdDev
 timeBodyAccJerkMagnitudeMean 
 timeBodyAccJerkMagnitudeStdDev
 timeBodyGyroscopeMagMean
 timeBodyGyroscopeMagStdDev
 timeBodyGyroscopeJerkMagnitudeMean
 timeBodyGyroscopeJerkMagnitudeStdDev
 frequencyBodyAccelerometerMagnitudeMean
 frequencyBodyAccelerometerMagnitudeStdDev
 frequencyBodyAccJerkMagnitudeMean
 frequencyBodyAccJerkMagnitudeStdDev
 frequencyBodyGyroscopeMagMean
 frequencyBodyGyroscopeMagStdDev
 frequencyBodyGyroscopeJerkMagnitudeMean
 frequencyBodyGyroscopeJerkMagnitudeStdDev
 
activityType = Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying"