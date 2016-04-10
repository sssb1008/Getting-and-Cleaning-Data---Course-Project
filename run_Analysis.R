# Load the required library for this R script
library(plyr)
# Source Data location
workingDir <- "~/Documents/SAIR/UCI HAR Dataset/data/"
feature_file <- paste(workingDir, "/features.txt", sep = "")
activity_labels_file <- paste(workingDir, "/activity_labels.txt", sep = "")
x_train_file <- paste(workingDir, "/train/X_train.txt", sep = "")
y_train_file <- paste(workingDir, "/train/y_train.txt", sep = "")
subject_train_file <- paste(workingDir, "/train/subject_train.txt", sep = "")
x_test_file  <- paste(workingDir, "/test/X_test.txt", sep = "")
y_test_file  <- paste(workingDir, "/test/y_test.txt", sep = "")
subject_test_file <- paste(workingDir, "/test/subject_test.txt", sep = "")

# Read Data into Tables
features <- read.table(feature_file, colClasses = c("character"))
activity_labels <- read.table(activity_labels_file, col.names = c("activityId", "activityType"))
x_train <- read.table(x_train_file)
y_train <- read.table(y_train_file)
subject_train <- read.table(subject_train_file)
x_test <- read.table(x_test_file)
y_test <- read.table(y_test_file)
subject_test <- read.table(subject_test_file)

# 1. Merge the training and the test sets to create one data set.

train_data <- cbind(cbind(x_train, subject_train), y_train)
test_data <- cbind(cbind(x_test, subject_test), y_test)
final_data <- rbind(train_data, test_data)

final_Datalabels <- rbind(rbind(features, c(562, "Subject")), c(563, "activityId"))[,2]
names(final_data) <- final_Datalabels

# 2. Extract only the measurements on the mean and standard deviation for each measurement.

final_Mean_Stddev <- final_data[,grepl("mean|std|Subject|activityId", names(final_data))]

# 3. Use descriptive activity names to name the activities in the data set

final_Mean_Stddev <- join(final_Mean_Stddev, activity_labels, by = "activityId", match = "first")
final_Mean_Stddev <- final_Mean_Stddev[,-1]

# 4. Appropriately label the data set with descriptive names

names(final_Mean_Stddev) <- gsub('\\(|\\)',"",names(final_Mean_Stddev), perl = TRUE)
names(final_Mean_Stddev) <- gsub('Acc',"Accelerometer",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- make.names(names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('[Gg]yro',"Gyroscope",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('Mag',"Magnitude",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('([Bb]ody[Bb]ody|[Bb]ody)',"Body",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('freq\\.',"Frequency.",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('freq$',"Frequency",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('^t',"Time.",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('^f',"Frequency.",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('\\.mean',".Mean",names(final_Mean_Stddev))
names(final_Mean_Stddev) <- gsub('\\.std',".StandardDeviation",names(final_Mean_Stddev))

# 5. From the data set in 4 above, create a second, independent tidy data set with the average of each variable for each activity and each subject

tidy_Data = ddply(final_Mean_Stddev, c("Subject","activityType"), numcolwise(mean))
write.table(tidy_Data, 'tidy_Data.txt',row.names=FALSE,sep='\t')

View(tidy_Data)