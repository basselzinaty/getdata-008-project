The R script run_analysis.R takes as input data (and meta data) files from the "Human Activity Recognition Using Smartphones" dataset, which represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

More information about the original data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script then "cleans" the data and returns a "tidy" dataset of mean and standard deviations for further analysis.

The first output is data_final.txt. It contains data about the 6 activities, collected from 30 subjects

The activities are:


* laying

* sitting

* standing

* walking

* walking downstairs

* walking upstairs

The variables describing these activities are listed below. They are the average (mean & std deviation) for the  3-axial linear acceleration and 3-axial angular velocity of:

* tbodyacc
* tgravityacc
* tbodyaccjerk
* tbodygyro
* tbodygyrojerk
* tbodyaccmag
* tgravityaccmag
* tbodyaccjerkmag
* tbodygyromag
* tbodygyrojerkmag
* fbodyacc
* fbodyaccjerk
* fbodygyro
* fbodyaccmag
* fbodybodyaccjerkmag
* fbodybodygyromag
* fbodybodygyrojerkmag

where a preceding t stands for time and an f stands for Fourier transform.


The second data set (data_averages.txt) contains the mean for each of the 30 subject for the above-mentioned variables.
