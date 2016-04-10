Kindly refer README.txt and features.txt files in the original dataset to learn more about the features for this dataset.

Per the project instructions, we need to produce only a tidy data set with the average and standard deviation of each variable for each activity and subject.

Salient Features of the Data Variables in the tidy_Data set:

The final product "tidy_Data.txt" file is created with the average and standard deviation of each variable for each activity and each subject from the original data set.

tidy_Data is a data.frame with 180 obs. of  81 variables

** Subject id = integer subject ID that denotes the subject that performed the activity.

** activityType = is factor variable that denotes the activity performed by a subject. There are 6 activities, namely:
denotes the activity performed by the subject. There are six activites, listed here:

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

** 79 other features cwere extracted from the original data based on the instuction to capture only mean and standard deviation data variables. Data have been labelled using descriptive names:

prefix t is replaced by Time

Acc is replaced by Accelerometer

Gyro is replaced by Gyroscope

prefix f is replaced by Frequency

Mag is replaced by Magnitude

BodyBody is replaced by Body

Mean and Standard Deviation Data Variables with Descriptive Data Labels:

All Time and Frequency domain mean and standard deviation variables shown below are numeric

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