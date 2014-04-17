#Code Book for Tidy Data Set  

##Files used:

#Activity descriptions:
*activity_labels.txt
Description of the numeric activity values

#Features:
*features.txt
List of all 561 individual variables measured or calculated

#Feature values:
*/test/X_test.txt
*/train/X_train.txt
Values for the 561 features for all subjects in the test and data set

#Activities performed
*/test/y_test.txt
*/train/y_train.txt
Numeric activity values for the 6 activities for all subjects in the test and training groups 

#Subjects:
*/test/subject_test.txt")
*/train/subject_train.txt")
Numeric identifier for the 30 subjects used divided between test and training set.

#Output File:
*/final_tidy_avg.txt")
Final output file created by script

##Transformations
.Data from test and train data sets was combined
.Only features representing the mean or standard deviation of measurements were retrieved
.Numeric activity was transformed to activity description
.Column names were renamed using the english description for activity and subject, and descriptions in file features.txt
.The seperate files for subject, activity, and the retreived features were combined into a single data.frame
.The mean was calculated for all features aggregated over subject and activity to create a final data frame

##Final data frame variables:
The final data frame, available in the file final_tidy_avg.txt contains the following variables:

subject: subject measured, numeric from 1 to 30 representing individual subjects
activity: activity, character, one of "LAYING","SITTING","STANDING","WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS"     

The calculation of the mean value for each subject and activity for the following measures:

tBodyAcc-mean-X
tBodyAcc-mean-Y
tBodyAcc-mean-Z
tGravityAcc-mean-X
tGravityAcc-mean-Y
tGravityAcc-mean-Z
tBodyAccJerk-mean-X
tBodyAccJerk-mean-Y
tBodyAccJerk-mean-Z
tBodyGyro-mean-X
tBodyGyro-mean-Y
tBodyGyro-mean-Z
tBodyGyroJerk-mean-X
tBodyGyroJerk-mean-Y
tBodyGyroJerk-mean-Z
tBodyAccMag-mean
tGravityAccMag-mean
tBodyAccJerkMag-mean
tBodyGyroMag-mean
tBodyGyroJerkMag-mean
tBodyAcc-std-X
tBodyAcc-std-Y
tBodyAcc-std-Z
tGravityAcc-std-X
tGravityAcc-std-Y
tGravityAcc-std-Z
tBodyAccJerk-std-X
tBodyAccJerk-std-Y
tBodyAccJerk-std-Z
tBodyGyro-std-X
tBodyGyro-std-Y
tBodyGyro-std-Z
tBodyGyroJerk-std-X
tBodyGyroJerk-std-Y
tBodyGyroJerk-std-Z
tBodyAccMag-std
tGravityAccMag-std
tBodyAccJerkMag-std
tBodyGyroMag-std
tBodyGyroJerkMag-std


.