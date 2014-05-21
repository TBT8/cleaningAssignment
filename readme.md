## The Original Dataset
* The original data was collected and compiled by the following team:
	Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
	Smartlab - Non Linear Complex Systems Laboratory
	DITEN - Università degli Studi di Genova.
	Via Opera Pia 11A, I-16145, Genoa, Italy.
	activityrecognition@smartlab.ws
	www.smartlab.ws

* The original data set can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* More info on the data set can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
* The dataset contains a subset of information gathered from a group of 30 volunteers within an age bracket of 19-48 years. 
* Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
* Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

## Dataset in Use
* The data I used are a subset of the original data that contains only those measurements associated with mean or standard deviation.
* I left out the meanFreq values because I am unconcerned with the frequency components. 
* See the codebook for a rundown of all the variable names.

## Running the Script
* The script assumes that you have the following files in your working directory: activity_labels.txt, features.txt, X_train.txt, y_train.txt, X_test.txt, y_test.txt, subject_test.txt.
* If you source the script it will return two data frames:
	- all.df - a merged data frame from the train and test cases, that includes only the mean and sd variables
	- mean.df - using the all.df, mean.df shows the average of each variable for each subject/activity combination

## Script Actions
* The script:
	- takes only the relevant columns from the training and test data (mean and sd)
	- takes the files named above and merges them into a clean data set
 	- renames the column headers to be more easily distinguishable
	- takes the mean for every subject/activity combination for each of the relevant variables




