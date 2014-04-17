#Getting_Cleaning_Data

##Getting and Cleaning Data project
The script run_analysis.R in this repository will manipulate data collected from Samsung smartphone accelerometer and gyroscope measurements at the University of Genoa on various subjects performing activities (Walking, Sitting, and Laying) *[1]*

The script first checks that files and directories for samsung data are present for the training and test sets. If they are found loading and manipulation of data.frames continue 

The script first extracts the column names from the list of features measured in the study containing mean and standard deviation values of measurements. Specifically, the script retrieves all columns that begin with the letter "t" with the text "mean" or "std" in their description.

The two data sets test and train are then combined for both the individual subjects, activities, and measurments. All columns are renamed using appropriate column descriptors. The indiviual activities measured are renamed with the english description "WALKING","SITTING" etc.

The average value for all extracted measurements for mean and standard deviation are then calculated for each subject and activity and stored in a data frame.

Using this final data frame, a file is written to the working directory.

*1* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 