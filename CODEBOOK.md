{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Courier New;}}
{\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\f0\fs22\par
#Source Dataset\par
\par
The data for this project and its corresponding codebook can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.\par
\par
#Key Changes from Original Data to Tidy Data\par
\par
1.Subjects, actvities and measurements are consolidated into the same dataset.\par
2. Test and training datasets are merged.\par
3. Labels are applied as such:\par
  *"Subject" applied on the subject_test.txt and subject_train.txt data (as mentioned in the original data readme.txt, this is a subject identifier and therefore does not contain personally identifiable information).\par
  *"activity" first applied on the Y_test.txt and Y_train.txt data and the corresponding "Activity.Name" applied from the activity_labels.txt after merging test and training datasets.\par
  *Respective labels assigned for measurements from the features.txt data.\par
  *Variable labels for selected measurements are renamed for clarity.\par
4. There are two tidy datasets created:\par
  *"data" is the full list of observations of selected measurements found in section __Selected Variable Labels (Original & Renamed in Tidy Datasets)__ with corresponding "Subject" and "Activity.Name" and written to a file called __UCI_HAR_Dataset_TidyData.txt__.\par
  *"data.averages" is the average of the measurements from "data", grouped by "Subject" and "Activity.Name" and written to a file called __UCI_HAR_Dataset_TidyDataWithAverages.txt__. This is the uploaded final file.\par
\par
#Methodology\par
\par
Please see the README.md for the full list of steps used to create the tidy datasets.\par
\par
#Selected Variable Labels (Original & Renamed in Tidy Dataset)\par
\par
This table shows the complete list of labels for the variables found in the final tidy datasets. They were renamed to expand the original labels for clarity. Please note that "Subject" and "Activity.Name" were added where the original dataset had no labels.\par
\par
__Original Variable Label__ | __Renamed Variable Labels in Tidy Dataset__\par
------------------------| ----------------------------------------------\par
tBodyAcc-mean()-X | BodyTimeAcceleration.MeanForAxisX\par
tBodyAcc-mean()-Y | BodyTimeAcceleration.MeanForAxisY\par
tBodyAcc-mean()-Z | BodyTimeAcceleration.MeanForAxisZ\par
tBodyAcc-std()-X | BodyTimeAcceleration.StandardDeviationForAxisX\par
tBodyAcc-std()-Y | BodyTimeAcceleration.StandardDeviationForAxisY\par
tBodyAcc-std()-Z | BodyTimeAcceleration.StandardDeviationForAxisZ\par
tGravityAcc-mean()-X | GravityTimeAcceleration.MeanForAxisX\par
tGravityAcc-mean()-Y | GravityTimeAcceleration.MeanForAxisY\par
tGravityAcc-mean()-Z | GravityTimeAcceleration.MeanForAxisZ\par
tGravityAcc-std()-X | GravityTimeAcceleration.StandardDeviationForAxisX\par
tGravityAcc-std()-Y | GravityTimeAcceleration.StandardDeviationForAxisY\par
tGravityAcc-std()-Z | GravityTimeAcceleration.StandardDeviationForAxisZ\par
tBodyAccJerk-mean()-X | BodyTimeAccelerationJerk.MeanForAxisX\par
tBodyAccJerk-mean()-Y | BodyTimeAccelerationJerk.MeanForAxisY\par
tBodyAccJerk-mean()-Z | BodyTimeAccelerationJerk.MeanForAxisZ\par
tBodyAccJerk-std()-X | BodyTimeAccelerationJerk.StandardDeviationForAxisX\par
tBodyAccJerk-std()-Y | BodyTimeAccelerationJerk.StandardDeviationForAxisY\par
tBodyAccJerk-std()-Z | BodyTimeAccelerationJerk.StandardDeviationForAxisZ\par
tBodyGyro-mean()-X | BodyTimeGyro.MeanForAxisX\par
tBodyGyro-mean()-Y | BodyTimeGyro.MeanForAxisY\par
tBodyGyro-mean()-Z | BodyTimeGyro.MeanForAxisZ\par
tBodyGyro-std()-X | BodyTimeGyro.StandardDeviationForAxisX\par
tBodyGyro-std()-Y | BodyTimeGyro.StandardDeviationForAxisY\par
tBodyGyro-std()-Z | BodyTimeGyro.StandardDeviationForAxisZ\par
tBodyGyroJerk-mean()-X | BodyTimeGyroJerk.MeanForAxisX\par
tBodyGyroJerk-mean()-Y | BodyTimeGyroJerk.MeanForAxisY\par
tBodyGyroJerk-mean()-Z | BodyTimeGyroJerk.MeanForAxisZ\par
tBodyGyroJerk-std()-X | BodyTimeGyroJerk.StandardDeviationForAxisX\par
tBodyGyroJerk-std()-Y | BodyTimeGyroJerk.StandardDeviationForAxisY\par
tBodyGyroJerk-std()-Z | BodyTimeGyroJerk.StandardDeviationForAxisZ\par
tBodyAccMag-mean() | BodyTimeAccelerationMagnitude.Mean\par
tBodyAccMag-std() | BodyTimeAccelerationMagnitude.StandardDeviation\par
tGravityAccMag-mean() | GravityTimeAccelerationMagnitude.Mean\par
tGravityAccMag-std() | GravityTimeAccelerationMagnitude.StandardDeviation\par
tBodyAccJerkMag-mean() | BodyTimeAccelerationJerkMagnitude.Mean\par
tBodyAccJerkMag-std() | BodyTimeAccelerationJerkMagnitude.StandardDeviation\par
tBodyGyroMag-mean() | BodyTimeGyroMagnitude.Mean\par
tBodyGyroMag-std() | BodyTimeGyroMagnitude.StandardDeviation\par
tBodyGyroJerkMag-mean() | BodyTimeGyroJerkMagnitude.Mean\par
tBodyGyroJerkMag-std() | BodyTimeGyroJerkMagnitude.StandardDeviation\par
fBodyAcc-mean()-X | BodyFFTAcceleration.MeanForAxisX\par
fBodyAcc-mean()-Y | BodyFFTAcceleration.MeanForAxisY\par
fBodyAcc-mean()-Z | BodyFFTAcceleration.MeanForAxisZ\par
fBodyAcc-std()-X | BodyFFTAcceleration.StandardDeviationForAxisX\par
fBodyAcc-std()-Y | BodyFFTAcceleration.StandardDeviationForAxisY\par
fBodyAcc-std()-Z | BodyFFTAcceleration.StandardDeviationForAxisZ\par
fBodyAcc-meanFreq()-X | BodyFFTAcceleration.MeanFrequencyForAxisX\par
fBodyAcc-meanFreq()-Y | BodyFFTAcceleration.MeanFrequencyForAxisY\par
fBodyAcc-meanFreq()-Z | BodyFFTAcceleration.MeanFrequencyForAxisZ\par
fBodyAccJerk-mean()-X | BodyFFTAccelerationJerk.MeanForAxisX\par
fBodyAccJerk-mean()-Y | BodyFFTAccelerationJerk.MeanForAxisY\par
fBodyAccJerk-mean()-Z | BodyFFTAccelerationJerk.MeanForAxisZ\par
fBodyAccJerk-std()-X | BodyFFTAccelerationJerk.StandardDeviationForAxisX\par
fBodyAccJerk-std()-Y | BodyFFTAccelerationJerk.StandardDeviationForAxisY\par
fBodyAccJerk-std()-Z | BodyFFTAccelerationJerk.StandardDeviationForAxisZ\par
fBodyAccJerk-meanFreq()-X | BodyFFTAccelerationJerk.MeanFrequencyForAxisX\par
fBodyAccJerk-meanFreq()-Y | BodyFFTAccelerationJerk.MeanFrequencyForAxisY\par
fBodyAccJerk-meanFreq()-Z | BodyFFTAccelerationJerk.MeanFrequencyForAxisZ\par
fBodyGyro-mean()-X | BodyFFTGyro.MeanForAxisX\par
fBodyGyro-mean()-Y | BodyFFTGyro.MeanForAxisY\par
fBodyGyro-mean()-Z | BodyFFTGyro.MeanForAxisZ\par
fBodyGyro-std()-X | BodyFFTGyro.StandardDeviationForAxisX\par
fBodyGyro-std()-Y | BodyFFTGyro.StandardDeviationForAxisY\par
fBodyGyro-std()-Z | BodyFFTGyro.StandardDeviationForAxisZ\par
fBodyGyro-meanFreq()-X | BodyFFTGyro.MeanFrequencyForAxisX\par
fBodyGyro-meanFreq()-Y | BodyFFTGyro.MeanFrequencyForAxisY\par
fBodyGyro-meanFreq()-Z | BodyFFTGyro.MeanFrequencyForAxisZ\par
fBodyAccMag-mean() | BodyFFTAccelerationMagnitude.Mean\par
fBodyAccMag-std() | BodyFFTAccelerationMagnitude.StandardDeviation\par
fBodyAccMag-meanFreq() | BodyFFTAccelerationMagnitude.MeanFrequency\par
fBodyBodyAccJerkMag-mean() | BodyFFTBodyAccelerationJerkMagnitude.Mean\par
fBodyBodyAccJerkMag-std() | BodyFFTBodyAccelerationJerkMagnitude.StandardDeviation\par
fBodyBodyAccJerkMag-meanFreq() | BodyFFTBodyAccelerationJerkMagnitude.MeanFrequency\par
fBodyBodyGyroMag-mean() | BodyFFTBodyGyroMagnitude.Mean\par
fBodyBodyGyroMag-std() | BodyFFTBodyGyroMagnitude.StandardDeviation\par
fBodyBodyGyroMag-meanFreq() | BodyFFTBodyGyroMagnitude.MeanFrequency\par
fBodyBodyGyroJerkMag-mean() | BodyFFTBodyGyroJerkMagnitude.Mean\par
fBodyBodyGyroJerkMag-std() | BodyFFTBodyGyroJerkMagnitude.StandardDeviation\par
fBodyBodyGyroJerkMag-meanFreq() | BodyFFTBodyGyroJerkMagnitude.MeanFrequency\par
\par
#References\par
\par
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012\par
}
 