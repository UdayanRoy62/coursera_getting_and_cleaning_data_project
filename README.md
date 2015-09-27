#Objective

The objective of the included run_analysis.R script is to create two sets of tidy data from the raw data found through the link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Only one tidy data set -- the one created in the final step of the script -- is, however, uploaded.

#Requirements

The project's requirements are:

1. Merging the "training" and the "test" data to create one data set. 
2. Extracting only the measurements on the mean and standard deviation for each measurement. 
3. Using descriptive activity names to name the activities in the data set. 
4. Appropriately labelling the data set with descriptive variable names. 
5. From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject. Only this tidy data set is uploaded. 

#Files included

You should find a total of 3 files in this repository:

1. README.md: This file
2. CODEBOOK.md: The codebook listing the variables in the final output, as well as the original variable names in the raw data
3. run_analysis.R: The full R script to perform the analysis

#Methodology

The following is the list of steps used in the run_analysis.R file:

1. Load dplyr library
2. Load the features.txt file 
  *Create the rename.feature function to rename the variable labels of measurements that we want (i.e. mean and standard deviation) 
  *Create another column with renamed variable labels called proper.name 
3. Load the activity names from activity_labels.txt with columns named "activity" and "Activity.Name"
4. Consolidate the test data set 
  *Read subject_test.txt with column named "Subject" 
  *Read Y_test.txt with the column named "activity" 
  *Read X_test.txt with the columns named from the proper.name column of the features table 
  *Column bind the three tables 
5. Consolidate the training data set 
  *Read subject_train.txt with column named "Subject" 
  *Read Y_train.txt with the column named "activity" 
  *Read X_train.txt with the columns named from the proper.name column of the features table 
  *Column bind the three tables 
6. Merge the test and training datasets using row binding
7. Assign the Activity.Name for each observation using the merge function as both the merged dataset and the activity names table shares the common ID activity
8. Select "Subject", "Activity.Name" and variables containing means and standard deviations of features (by filtering measurements with the text mean, std and meanFreq in the original name of the measurement found in the features.txt) and assign it to the data table "data"
9. Write "data" to a file called UCI_HAR_Dataset_TidyData.txt in the working directory. (This file is not uploaded, but can be obtained by running the script.)
10. Calculate the averages of each variable, grouped by "Subject" and "Activity.Name", and assign it to the data table "data.averages"
11. Write "data.averages" to a file called __UCI_HAR_Dataset_TidyDataWithAverages.txt__ in the working directory. This file is uploaded.
12. Clean up all data from memory except "data" and "data.averages"

The script also includes remarks at each major step and contains message outputs so that you can see the step of the script that is being run.

#About the selected measurements

Although there are 86 measurements with the word mean and std that refer to mean and standard deviation respectively, 7 of them are about the angle. Hence, the measurements of the following variables are excluded in the tidy datasets.

  *angle(BodyTimeAccelerationMean,gravity)

  *angle(BodyTimeAccelerationMean,gravity)

  *angle(BodyTimeAccelerationMean,gravity)

  *angle(BodyTimeGyroJerkMean,gravityMean)

  *angle(X,gravityMean)

  *angle(Y,gravityMean)

  *angle(Z,gravityMean)

#Functions found within run_analysis.R

rename.feature is used to rename the parameter (in this case, the variable label of measurements) to a more readable format. This includes expanding the original variable labels for features to fuller descriptions, and examples of these include:

  *std is now StandardDeviation 
  *Acc is now Acceleration 
  *tbody is now BodyTime to indicate it is a measurement of time 
  *fGravity is now GravityFFT to indicate the f is for the FFT frequency 
  *means and standard deviations of the X, Y and Z axis measurements also clearly denote ForAxisX, ForAxisY, etc 

Please see CODEBOOK.md for the full list of original variable labels and renamed variable labels.

#Before running run_analysis.R

##Libraries required

Please note that the script requires the dplyr library. Please install this library before running it.

##Location of the raw data

The script also expects the raw data to be extracted from the zip file in the link mentioned under the Objective section above and placed in the working directory in a folder called "UCI HAR Dataset". 