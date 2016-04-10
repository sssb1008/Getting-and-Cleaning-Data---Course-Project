Introduction and Objective

This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent analysis. A full description of the data used in this project can be found at The UCI Machine Learning Repository - 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


The source data for this project can be found here -  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The Background

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset.

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.


Tasks to be accomplished for this Project:

Create an R script called run_analysis.R that does the following:

Step 1. Merge the training and the test sets to create one data set.

Step 2. Extract only the measurements on the mean and standard deviation for each measurement.

Step 3. Use descriptive activity names to name the activities in the data set. 

Step 4. Appropriately labels the data set with descriptive variable names.

Step 5. From the data set in the above step, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Step-by-Step Tasks

I. Create a project workspace on on your computer, extract the source data files (in archived zip format) into the workspace diectory and set that as working directory.

Working Directory:

In my case, while working on this project, I unzipped the data downloaded from the source mentioned above where the raw data resides to the following path and set that was the working directory.

 "~/Documents/SAIR/UCI HAR Dataset/data/"

II. Analyze the objectives of the project and defined the data variables and functions required to clean the source data and prepare the tidy data as per the  project tasks stated above.

Includes binding the data into a single data set and applying relevant labels to the data 

IV. Coded run_analysis.R to perform the task of producing a tidy dataset.

used gsub to clean up the data labels and add decriptive labels for the data.

V. The output of the IV above is called tidy_Data.txt, and uploaded in the course project's form.


Description of Data Variables is provided in CodeBook.md

Files & Folders in Working Directory

Initially provided on course website

    Folder : UCI-HAR-Dataset
    Files  :
                features.txt
                activity_labels.txt
                subject_train.txt
                x_train.txt
                y_train.txt
                subject_test.txt
                x_test.txt
                y_test.txt
                
Created as part of the Project:

    Folder: UCI-HAR-Dataset
    Files : 
            run_analysis.R
            README.md
            CodeBook.md
           
Created by the Code run_analysis.R
    Files : 
            tidy_Data.txt
            
Created Repository on GitHub, cloned the working directory, committed and synchornized for peers to evlulate the project.

GitHub repository link : https://github.com/sssb1008/Getting-and-Cleaning-Data---Course-Project.git

Acknowledgements: 

I take this opportunity to thank Professors Jeff Leek and Roger Peng for all the knowledge gained through this course.

I also take this opportunity to thank course peers for taking time out of their busy schedules to review the Project.