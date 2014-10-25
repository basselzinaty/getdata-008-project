Getting and Cleaning Data Course Project
===================

This project uses the data described here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


###The analysis file assumes:


You have downloaded the following dataset: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The current working directory is set to .\UCI HAR Dataset


###The run_analysis.R script does the following:


1. Reads and merges the test and training data (x,y, and subject from both)

2. Labels the dataset according to the activity_labels file

3. Only keeps the mean and standard deviation measurements. Gets rid of all other measurements.

4. Outputs the dataset into a txt file (data_final.txt)

5. Outputs a second (tidy) dataset with the average of each variable for each activity and each subject. (data_averages.txt)


Step 5 require the use of reshape2 library


The CodeBook.md file describes the variables, the data, and all transformations performed.