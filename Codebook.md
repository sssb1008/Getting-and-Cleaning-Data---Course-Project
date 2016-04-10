Kindly refer README.txt and features.txt files in the original dataset to learn more about the feature selection for this dataset.

The steps followed in run_Analysis.R script to get to the final tidyData set as per the requirements of the project is as follows:

Step 1. Merge the training and the test sets to create one data set.

After setting the directory for the files, read into tables the data located in features.txt, activity_labels.txt, subject_train.txt, x_train.txt, y_train.txt, subject_test.txt, x_test.txt, and y_test.txt

Assign column names and merge to create one data set.

Step 2. Extract only the measurements on the mean and standard deviation for each measurement.

Bind the data

Step 3. Use descriptive activity names to name the activities in the data set

Step 4. Appropriately label the data set with descriptive activity names.

Use gsub function for pattern replacement to clean up the data labels.

Step 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

Per the project instructions, we need to produce only a data set with the average of each variable for each activity and subject

The features selected for this data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

Data have been labelled using descriptive names.They are as follows:

prefix t is replaced by Time

Acc is replaced by Accelerometer

Gyro is replaced by Gyroscope

prefix f is replaced by Frequency

Mag is replaced by Magnitude

BodyBody is replaced by Body

The final product "tidy_Data.txt" file is created with the average of each variable for each activity and each subject from the original data set with the following labels:

Activity id = integer activity ID

Subject id = integer subject ID

Mean and Standard Deviation Data Variables with Descriptive Data Labels:

tidy_Data is a data.frame:	180 obs. of  81 variables


Subject	- integer variable
activityType - factor variable

All Time and Frequency domain mean and standard deviation variables below are numeric

Time domain Mean and Standard Deviation Variables

Time.BodyAccelerometer.Mean.X
Time.BodyAccelerometer.Mean.Y
Time.BodyAccelerometer.Mean.Z
Time.BodyAccelerometer.StandardDeviation.X
Time.BodyAccelerometer.StandardDeviation.Y
Time.BodyAccelerometer.StandardDeviation.Z
Time.GravityAccelerometer.Mean.X
Time.GravityAccelerometer.Mean.Y
Time.GravityAccelerometer.Mean.Z
Time.GravityAccelerometer.StandardDeviation.X
Time.GravityAccelerometer.StandardDeviation.Y
Time.GravityAccelerometer.StandardDeviation.Z
Time.BodyAccelerometerJerk.Mean.X
Time.BodyAccelerometerJerk.Mean.Y
Time.BodyAccelerometerJerk.Mean.Z
Time.BodyAccelerometerJerk.StandardDeviation.X
Time.BodyAccelerometerJerk.StandardDeviation.Y
Time.BodyAccelerometerJerk.StandardDeviation.Z
Time.BodyGyroscope.Mean.X
Time.BodyGyroscope.Mean.Y
Time.BodyGyroscope.Mean.Z
Time.BodyGyroscope.StandardDeviation.X
Time.BodyGyroscope.StandardDeviation.Y
Time.BodyGyroscope.StandardDeviation.Z
Time.BodyGyroscopeJerk.Mean.X
Time.BodyGyroscopeJerk.Mean.Y
Time.BodyGyroscopeJerk.Mean.Z
Time.BodyGyroscopeJerk.StandardDeviation.X
Time.BodyGyroscopeJerk.StandardDeviation.Y
Time.BodyGyroscopeJerk.StandardDeviation.Z
Time.BodyAccelerometerMagnitude.Mean
Time.BodyAccelerometerMagnitude.StandardDeviation
Time.GravityAccelerometerMagnitude.Mean
Time.GravityAccelerometerMagnitude.StandardDeviation
Time.BodyAccelerometerJerkMagnitude.Mean
Time.BodyAccelerometerJerkMagnitude.StandardDeviation
Time.BodyGyroscopeMagnitude.Mean
Time.BodyGyroscopeMagnitude.StandardDeviation
Time.BodyGyroscopeJerkMagnitude.Mean
Time.BodyGyroscopeJerkMagnitude.StandardDeviation

Frequency domain Mean and Standard Deviation Variables

Frequency.BodyAccelerometer.Mean.X
Frequency.BodyAccelerometer.Mean.Y
Frequency.BodyAccelerometer.Mean.Z
Frequency.BodyAccelerometer.StandardDeviation.X
Frequency.BodyAccelerometer.StandardDeviation.Y
Frequency.BodyAccelerometer.StandardDeviation.Z
Frequency.BodyAccelerometer.MeanFreq.X
Frequency.BodyAccelerometer.MeanFreq.Y
Frequency.BodyAccelerometer.MeanFreq.Z
Frequency.BodyAccelerometerJerk.Mean.X
Frequency.BodyAccelerometerJerk.Mean.Y
Frequency.BodyAccelerometerJerk.Mean.Z
Frequency.BodyAccelerometerJerk.StandardDeviation.X
Frequency.BodyAccelerometerJerk.StandardDeviation.Y
Frequency.BodyAccelerometerJerk.StandardDeviation.Z
Frequency.BodyAccelerometerJerk.MeanFreq.X
Frequency.BodyAccelerometerJerk.MeanFreq.Y
Frequency.BodyAccelerometerJerk.MeanFreq.Z
Frequency.BodyGyroscope.Mean.X
Frequency.BodyGyroscope.Mean.Y
Frequency.BodyGyroscope.Mean.Z
Frequency.BodyGyroscope.StandardDeviation.X
Frequency.BodyGyroscope.StandardDeviation.Y
Frequency.BodyGyroscope.StandardDeviation.Z
Frequency.BodyGyroscope.MeanFreq.X
Frequency.BodyGyroscope.MeanFreq.Y
Frequency.BodyGyroscope.MeanFreq.Z
Frequency.BodyAccelerometerMagnitude.Mean
Frequency.BodyAccelerometerMagnitude.StandardDeviation
Frequency.BodyAccelerometerMagnitude.MeanFreq
Frequency.BodyAccelerometerJerkMagnitude.Mean
Frequency.BodyAccelerometerJerkMagnitude.StandardDeviation
Frequency.BodyAccelerometerJerkMagnitude.MeanFreq
Frequency.BodyGyroscopeMagnitude.Mean
Frequency.BodyGyroscopeMagnitude.StandardDeviation
Frequency.BodyGyroscopeMagnitude.MeanFreq
Frequency.BodyGyroscopeJerkMagnitude.Mean
Frequency.BodyGyroscopeJerkMagnitude.StandardDeviation
Frequency.BodyGyroscopeJerkMagnitude.MeanFreq