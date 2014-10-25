getdata-008-project
===================

This project uses the data described here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The analysis file assumes you have downloaded the following dataset: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

It also assumes that the current working directory is .\UCI HAR Dataset

The analysis file will produce 2 output datasets:
*data_final.txt: The output result from doing the following steps:
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 

*data_averages.txt
A second tidy data set with the average of each variable for each activity and each subject.

The CodeBook.md file describes the variables, the data, and all transformations performed.