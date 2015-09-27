{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Courier New;}}
{\colortbl ;\red0\green0\blue255;}
{\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\f0\fs22 #Objective\par
\par
The objective of the included run_analysis.R script is to create two sets of tidy data from the raw data found through the link: {\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt{\ul\cf1 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}}\f0\fs22 . Only one tidy data set -- the one created in the final step of the script -- is, however, uploaded.\par
\par
#Requirements\par
\par
The project's requirements are:\par
\par
1. Merging the "training" and the "test" data to create one data set.\par
2. Extracting only the measurements on the mean and standard deviation for each measurement.\par
3. Using descriptive activity names to name the activities in the data set\par
4. Appropriately labelling the data set with descriptive variable names.\par
5. From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject. Only this tidy data set is uploaded.\par
\par
#Files included\par
\par
You should find a total of 3 files in this repository:\par
\par
1. README.md: This file\par
2. CODEBOOK.md: The codebook listing the variables in the final output, as well as the original variable names in the raw data\par
3. run_analysis.R: The full R script to perform the analysis\par
\par
#Methodology\par
\par
The following is the list of steps used in the run_analysis.R file:\par
\par
1. Load dplyr library\par
2. Load the features.txt file\par
  *Create the rename.feature function to rename the variable labels of measurements that we want (i.e. mean and standard deviation)\par
  *Create another column with renamed variable labels called proper.name\par
3. Load the activity names from activity_labels.txt with columns named "activity" and "Activity.Name"\par
4. Consolidate the test data set\par
  *Read subject_test.txt with column named "Subject"\par
  *Read Y_test.txt with the column named "activity"\par
  *Read X_test.txt with the columns named from the proper.name column of the features table\par
  *Column bind the three tables\par
5. Consolidate the training data set\par
  *Read subject_train.txt with column named "Subject"\par
  *Read Y_train.txt with the column named "activity"\par
  *Read X_train.txt with the columns named from the proper.name column of the features table\par
  *Column bind the three tables\par
6. Merge the test and training datasets using row binding\par
7. Assign the Activity.Name for each observation using the merge function as both the merged dataset and the activity names table shares the common ID activity\par
8. Select "Subject", "Activity.Name" and variables containing means and standard deviations of features (by filtering measurements with the text mean, std and meanFreq in the original name of the measurement found in the features.txt) and assign it to the data table "data"\par
9. Write "data" to a file called UCI_HAR_Dataset_TidyData.txt in the working directory. (This file is not uploaded, but can be obtained by running the script.)\par
10. Calculate the averages of each variable, grouped by "Subject" and "Activity.Name", and assign it to the data table "data.averages"\par
11. Write data.averages to a file called UCI_HAR_Dataset_TidyDataWithAverages.txt in the working directory. This file is uploaded.\par
12. Clean up all data from memory except "data" and "data.averages"\par
\par
The script also includes remarks at each major step and contains message outputs so that you can see the step of the script that is being run.\par
\par
#About the selected measurements\par
\par
Although there are 86 measurements with the word mean and std that refer to mean and standard deviation respectively, 7 of them are about the angle. Hence, the measurements of the following variables are excluded in the tidy datasets.\par
\par
  *angle(BodyTimeAccelerationMean,gravity)\par
  *angle(BodyTimeAccelerationMean,gravity)\par
  *angle(BodyTimeAccelerationMean,gravity)\par
  *angle(BodyTimeGyroJerkMean,gravityMean)\par
  *angle(X,gravityMean)\par
  *angle(Y,gravityMean)\par
  *angle(Z,gravityMean)\par
\par
#Functions found within run_analysis.R\par
\par
rename.feature is used to rename the parameter (in this case, the variable label of measurements) to a more readable format. This includes expanding the original variable labels for features to fuller descriptions, and examples of these include:\par
\par
  *std is now StandardDeviation\par
  *Acc is now Acceleration\par
  *tbody is now BodyTime to indicate it is a measurement of time\par
  *fGravity is now GravityFFT to indicate the f is for the FFT frequency\par
  *means and standard deviations of the X, Y and Z axis measurements also clearly denote ForAxisX, ForAxisY, etc\par
\par
Please see CODEBOOK.md for the full list of original variable labels and renamed variable labels.\par
\par
#Before running run_analysis.R\par
\par
##Libraries required\par
\par
Please note that the script requires the dplyr library. Please install this library before running it.\par
\par
##Location of the raw data\par
\par
The script also expects the raw data to be extracted from the zip file in the link mentioned under the Objective section above and placed in the working directory in a folder called "UCI HAR Dataset". \par
}
 