library(dplyr)

##  The data set is assumed to be in the "UCI HAR Dataset" directory in the working directory

dir <- "UCI HAR Dataset"
testdir <- paste(dir,"test",sep="/")
traindir <- paste(dir,"train",sep="/")

##  Load features and create descriptive variable names using pattern matching

message("Assigning descriptive feature names for variables...")
features <- read.table(paste(dir,"features.txt",sep="/"))
rename.feature <- function(variable_name) {
  variable_name <- gsub("\\-meanFreq\\(\\)\\-",".MeanFrequencyForAxis",variable_name)
  variable_name <- gsub("\\-meanFreq\\(\\)",".MeanFrequency",variable_name)
  variable_name <- gsub("\\-mean\\(\\)\\-",".MeanForAxis",variable_name)
  variable_name <- gsub("\\-mean\\(\\)",".Mean",variable_name)
  variable_name <- gsub("\\-std\\(\\)\\-",".StandardDeviationForAxis",variable_name)
  variable_name <- gsub("\\-std\\(\\)",".StandardDeviation",variable_name)
  variable_name <- gsub("Mag","Magnitude",variable_name)
  variable_name <- gsub("Acc","Acceleration",variable_name)
  variable_name <- gsub("tBody","BodyTime",variable_name)
  variable_name <- gsub("fBody","BodyFFT",variable_name)
  variable_name <- gsub("tGravity","GravityTime",variable_name)
  variable_name <- gsub("fGravity","GravityFFT",variable_name)
}
features$proper.name <- rename.feature(features$V2)

##  Obtain activity names

message("Loading activity names...")
activity_names <- read.table(paste(dir,"activity_labels.txt",sep="/"),col.names=c("activity","Activity.Name"))

##  Complete test data

message("Loading test data...")
subject_test <- read.table(paste(testdir,"subject_test.txt",sep="/"),col.names="Subject")
Y_test <- read.table(paste(testdir,"Y_test.txt",sep="/"),col.names="activity")
X_test <- read.table(paste(testdir,"X_test.txt",sep="/"),col.names=features[,"proper.name"])

test <- as.data.frame(cbind(subject_test,Y_test,X_test))
rm(subject_test,X_test,Y_test)

##  Complete training data

message("Loading training data...")
subject_train <- read.table(paste(traindir,"subject_train.txt",sep="/"),col.names="Subject")
Y_train <- read.table(paste(traindir,"Y_train.txt",sep="/"),col.names="activity")
X_train <- read.table(paste(traindir,"X_train.txt",sep="/"),col.names=features[,"proper.name"])

train <- as.data.frame(cbind(subject_train,Y_train,X_train))
rm(subject_train,X_train,Y_train)

##  Merge test and training data

data <- rbind(test,train)

##  Assign activity names

data <- merge(data,activity_names)

##  Select only variables that are means and standard deviations of the features

data <- data[,c("Subject","Activity.Name",features[grep("mean\\(|std\\(|meanFreq\\(",features$V2),"proper.name"])]
message("Writing tidy data to UCI_HAR_Dataset_TidyData.txt in working directory...")
write.table(data,'UCI_HAR_Dataset_TidyData.txt',row.name=FALSE)

##  Create and write tidy data of averages for each variable by subject and activity

message("Writing tidy data of averages to UCI_HAR_Dataset_TidyDataWithAverages.txt in working directory...")
data.averages <- summarize_each(group_by(data,Subject,Activity.Name),funs(mean))
write.table(data.averages,'UCI_HAR_Dataset_TidyDataWithAverages.txt',row.name=FALSE)

##  Clean up unnecessary data and values from memory
rm(dir,train,test,activity_names,features,rename.feature,testdir,traindir)

## Done!
message("Tidy data created!")
