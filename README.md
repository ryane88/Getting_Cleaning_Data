#Getting_Cleaning_Data

##Getting and Cleaning Data project
The script run_analysis.R in this repository will manipulate data collected from Samsung smartphone accelerometer and gyroscope measurements during a study performed at the University of Genoa on various subjects performing activities (Walking, Sitting, and Laying) *[1]*

The script first checks that files and directories for samsung data are present for the training and test sets. If they are found loading and manipulation of data.frames continue 

The script first extracts the column names from the list of features measured in the study containing mean and standard deviation values of measurements. Specifically, the script retrieves all columns that begin with the letter "t" with the text "mean" or "std".

The two data sets test and train are then combined for both the individual subjects, activities, and measurments. All columns are renamed using appropriate column descriptors. The indiviual activities measured are renamed with the english description "WALKING","SITTING" etc.

The final data.frame containing the extracted measurements for mean and standard deviation is then aggregated over the variables subject and activity, to produce a final tidy data file containing subject, activity, and the average values for all the retreived columns for the mean, and standard deviation.

Using this final data frame, a file is written to the working directory with the calculted values.
