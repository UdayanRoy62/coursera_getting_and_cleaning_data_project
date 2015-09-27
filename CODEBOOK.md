Codebook
========

#Source Dataset

The data for this project and its corresponding codebook can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

#Key Changes from Original Data to Tidy Data

1. Subjects, actvities and measurements are consolidated into the same dataset.

2. Test and training datasets are merged.

3. Labels are applied as such:

  * "Subject" applied on the subject_test.txt and subject_train.txt data (as mentioned in the original data readme.txt, this is a subject identifier and therefore does not contain personally identifiable information).
  * "activity" first applied on the Y_test.txt and Y_train.txt data and the corresponding "Activity.Name" applied from the activity_labels.txt after merging test and training datasets.
  * Respective labels assigned for measurements from the features.txt data.
  * Variable labels for selected measurements are renamed for clarity.

4. There are two tidy datasets created:

  * "data" is the full list of observations of selected measurements found in section __Selected Variable Labels (Original & Renamed in Tidy Datasets)__ with corresponding "Subject" and "Activity.Name" and written to a file called __UCI_HAR_Dataset_TidyData.txt__.
  * "data.averages" is the average of the measurements from "data", grouped by "Subject" and "Activity.Name" and written to a file called __UCI_HAR_Dataset_TidyDataWithAverages.txt__. This is the uploaded final file.

#Methodology

Please see the README.md for the full list of steps used to create the tidy datasets.

#Selected Variable Labels (Original & Renamed in Tidy Dataset)

This table shows the complete list of labels for the variables found in the final tidy datasets. They were renamed to expand the original labels for clarity. Please note that "Subject" and "Activity.Name" were added where the original dataset had no labels.

__Original Variable Label__ | __Renamed Variable Labels in Tidy Dataset__
------------------------| ----------------------------------------------
tBodyAcc-mean()-X | BodyTimeAcceleration.MeanForAxisX
tBodyAcc-mean()-Y | BodyTimeAcceleration.MeanForAxisY
tBodyAcc-mean()-Z | BodyTimeAcceleration.MeanForAxisZ
tBodyAcc-std()-X | BodyTimeAcceleration.StandardDeviationForAxisX
tBodyAcc-std()-Y | BodyTimeAcceleration.StandardDeviationForAxisY
tBodyAcc-std()-Z | BodyTimeAcceleration.StandardDeviationForAxisZ
tGravityAcc-mean()-X | GravityTimeAcceleration.MeanForAxisX
tGravityAcc-mean()-Y | GravityTimeAcceleration.MeanForAxisY
tGravityAcc-mean()-Z | GravityTimeAcceleration.MeanForAxisZ
tGravityAcc-std()-X | GravityTimeAcceleration.StandardDeviationForAxisX
tGravityAcc-std()-Y | GravityTimeAcceleration.StandardDeviationForAxisY
tGravityAcc-std()-Z | GravityTimeAcceleration.StandardDeviationForAxisZ
tBodyAccJerk-mean()-X | BodyTimeAccelerationJerk.MeanForAxisX
tBodyAccJerk-mean()-Y | BodyTimeAccelerationJerk.MeanForAxisY
tBodyAccJerk-mean()-Z | BodyTimeAccelerationJerk.MeanForAxisZ
tBodyAccJerk-std()-X | BodyTimeAccelerationJerk.StandardDeviationForAxisX
tBodyAccJerk-std()-Y | BodyTimeAccelerationJerk.StandardDeviationForAxisY
tBodyAccJerk-std()-Z | BodyTimeAccelerationJerk.StandardDeviationForAxisZ
tBodyGyro-mean()-X | BodyTimeGyro.MeanForAxisX
tBodyGyro-mean()-Y | BodyTimeGyro.MeanForAxisY
tBodyGyro-mean()-Z | BodyTimeGyro.MeanForAxisZ
tBodyGyro-std()-X | BodyTimeGyro.StandardDeviationForAxisX
tBodyGyro-std()-Y | BodyTimeGyro.StandardDeviationForAxisY
tBodyGyro-std()-Z | BodyTimeGyro.StandardDeviationForAxisZ
tBodyGyroJerk-mean()-X | BodyTimeGyroJerk.MeanForAxisX
tBodyGyroJerk-mean()-Y | BodyTimeGyroJerk.MeanForAxisY
tBodyGyroJerk-mean()-Z | BodyTimeGyroJerk.MeanForAxisZ
tBodyGyroJerk-std()-X | BodyTimeGyroJerk.StandardDeviationForAxisX
tBodyGyroJerk-std()-Y | BodyTimeGyroJerk.StandardDeviationForAxisY
tBodyGyroJerk-std()-Z | BodyTimeGyroJerk.StandardDeviationForAxisZ
tBodyAccMag-mean() | BodyTimeAccelerationMagnitude.Mean
tBodyAccMag-std() | BodyTimeAccelerationMagnitude.StandardDeviation
tGravityAccMag-mean() | GravityTimeAccelerationMagnitude.Mean
tGravityAccMag-std() | GravityTimeAccelerationMagnitude.StandardDeviation
tBodyAccJerkMag-mean() | BodyTimeAccelerationJerkMagnitude.Mean
tBodyAccJerkMag-std() | BodyTimeAccelerationJerkMagnitude.StandardDeviation
tBodyGyroMag-mean() | BodyTimeGyroMagnitude.Mean
tBodyGyroMag-std() | BodyTimeGyroMagnitude.StandardDeviation
tBodyGyroJerkMag-mean() | BodyTimeGyroJerkMagnitude.Mean
tBodyGyroJerkMag-std() | BodyTimeGyroJerkMagnitude.StandardDeviation
fBodyAcc-mean()-X | BodyFFTAcceleration.MeanForAxisX
fBodyAcc-mean()-Y | BodyFFTAcceleration.MeanForAxisY
fBodyAcc-mean()-Z | BodyFFTAcceleration.MeanForAxisZ
fBodyAcc-std()-X | BodyFFTAcceleration.StandardDeviationForAxisX
fBodyAcc-std()-Y | BodyFFTAcceleration.StandardDeviationForAxisY
fBodyAcc-std()-Z | BodyFFTAcceleration.StandardDeviationForAxisZ
fBodyAcc-meanFreq()-X | BodyFFTAcceleration.MeanFrequencyForAxisX
fBodyAcc-meanFreq()-Y | BodyFFTAcceleration.MeanFrequencyForAxisY
fBodyAcc-meanFreq()-Z | BodyFFTAcceleration.MeanFrequencyForAxisZ
fBodyAccJerk-mean()-X | BodyFFTAccelerationJerk.MeanForAxisX
fBodyAccJerk-mean()-Y | BodyFFTAccelerationJerk.MeanForAxisY
fBodyAccJerk-mean()-Z | BodyFFTAccelerationJerk.MeanForAxisZ
fBodyAccJerk-std()-X | BodyFFTAccelerationJerk.StandardDeviationForAxisX
fBodyAccJerk-std()-Y | BodyFFTAccelerationJerk.StandardDeviationForAxisY
fBodyAccJerk-std()-Z | BodyFFTAccelerationJerk.StandardDeviationForAxisZ
fBodyAccJerk-meanFreq()-X | BodyFFTAccelerationJerk.MeanFrequencyForAxisX
fBodyAccJerk-meanFreq()-Y | BodyFFTAccelerationJerk.MeanFrequencyForAxisY
fBodyAccJerk-meanFreq()-Z | BodyFFTAccelerationJerk.MeanFrequencyForAxisZ
fBodyGyro-mean()-X | BodyFFTGyro.MeanForAxisX
fBodyGyro-mean()-Y | BodyFFTGyro.MeanForAxisY
fBodyGyro-mean()-Z | BodyFFTGyro.MeanForAxisZ
fBodyGyro-std()-X | BodyFFTGyro.StandardDeviationForAxisX
fBodyGyro-std()-Y | BodyFFTGyro.StandardDeviationForAxisY
fBodyGyro-std()-Z | BodyFFTGyro.StandardDeviationForAxisZ
fBodyGyro-meanFreq()-X | BodyFFTGyro.MeanFrequencyForAxisX
fBodyGyro-meanFreq()-Y | BodyFFTGyro.MeanFrequencyForAxisY
fBodyGyro-meanFreq()-Z | BodyFFTGyro.MeanFrequencyForAxisZ
fBodyAccMag-mean() | BodyFFTAccelerationMagnitude.Mean
fBodyAccMag-std() | BodyFFTAccelerationMagnitude.StandardDeviation
fBodyAccMag-meanFreq() | BodyFFTAccelerationMagnitude.MeanFrequency
fBodyBodyAccJerkMag-mean() | BodyFFTBodyAccelerationJerkMagnitude.Mean
fBodyBodyAccJerkMag-std() | BodyFFTBodyAccelerationJerkMagnitude.StandardDeviation
fBodyBodyAccJerkMag-meanFreq() | BodyFFTBodyAccelerationJerkMagnitude.MeanFrequency
fBodyBodyGyroMag-mean() | BodyFFTBodyGyroMagnitude.Mean
fBodyBodyGyroMag-std() | BodyFFTBodyGyroMagnitude.StandardDeviation
fBodyBodyGyroMag-meanFreq() | BodyFFTBodyGyroMagnitude.MeanFrequency
fBodyBodyGyroJerkMag-mean() | BodyFFTBodyGyroJerkMagnitude.Mean
fBodyBodyGyroJerkMag-std() | BodyFFTBodyGyroJerkMagnitude.StandardDeviation
fBodyBodyGyroJerkMag-meanFreq() | BodyFFTBodyGyroJerkMagnitude.MeanFrequency

#References

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012