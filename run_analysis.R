#Check for certain files and directories for samsung data, and exit if doesn't look right

if(!file.exists("./activity_labels.txt")|!file.exists("./train")){
  
  stop("
  ***It looks like you have not downloaded and unzipped Samsung Data to your working directory 
  please download from : 

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

  and unzip to your current working directory")
}
  


#load the data.frame containing descriptions of the activities 
activities<-read.table("./activity_labels.txt")

#load the data.frame containing the human readable versions of measurments
features<-read.table("./features.txt")

##Following will extract all median and standard deviations calculations of measurements
##Find columns in time domain features containing substring "Mean" or "mean" and "Std" or "std"
stdcols<-grep("^t.+[Ss]td",features[,2])
meancols<-grep("^t.+[Mm]ean",features[,2])

## Read in test and train measurement data set and combine
test_data<-read.table("./test/X_test.txt")
train_data<-read.table("./train/X_train.txt")
all_data<-rbind(test_data,train_data)


##extract column vector containing std or mean in name
mean_data<-all_data[,meancols]
std_data<-all_data[,stdcols]

##change column names using appropriate description from data.frame features
##removing brackets() from feature descriptions
colnames(mean_data)<-gsub("[()]","",features[meancols,2])
colnames(std_data)<-gsub("[()]","",features[stdcols,2])

##combine columns to create one data frame with all measurements
x_data=cbind(mean_data,std_data)

##read in activity data and combine
y_test_data<-read.table("./test/y_test.txt")
y_train_data<-read.table("./train/y_train.txt")
y_data<-rbind(y_test_data,y_train_data)

##extract appropriate activity names from activities data.frame, and name columns appropriately
tidy_y<-merge(y_data,activities,by.x="V1",by.y="V1",all)
colnames(tidy_y)<-c("activity_id","activity")

##load subject data, and combine subject, activity and measurement variables for test set
subject_test_data<-read.table("./test/subject_test.txt")
subject_train_data<-read.table("./train/subject_train.txt")
subject_data<-rbind(subject_test_data,subject_train_data)
colnames(subject_data)<-"subject"

##combine subject_data, activity_data and measurement data
final_tidy<-cbind(subject_data,cbind(tidy_y,x_data))

##compute averages using mean() aggregated over subject and activity
final_tidy_avg<-aggregate(final_tidy[,4:ncol(final_tidy)],by=list(final_tidy$subject,final_tidy$activity),FUN=mean,na.rm=TRUE)
colnames(final_tidy_avg)[1:2]<-c("subject","activity")

##
