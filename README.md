**If the file appears hard to read, you may need to download and open seperately.

######################################################################################################

The "run_analysis.R" script generates the tidied data file.

Steps:
1. Unzip the "getdata_projectfiles_UCI HAR Dataset.zip" file into your desktop. If you need another working directory, you will need to change all lines with setwd() in the script.
2. Run the script
3. "traindata.csv" and "testdata.csv" will be generated, retrieved from the respective training and test data folders. A combined "final.csv" will be generated. All files for verify purposes.
4. Finally, a "finalAve.txt" file with the tidy averaged data set of all mean and standard deviation readings will be generated. They are grouped by "subject" and "activity".

######################################################################################################


What I understand about this study:

So what i understand from the studying and observing the data, is that there are a total of 30 volunteers in this study. They are performing a set of 6 different activities eg. walking or sitting. And their movements are being captured by a sensor device.

21 (70%) of the volunteers are randomly picked for the training dataset.
9 (30%) of the volunteers are randomly picked for the testing dataset.

Test and Train data folders:

Looking at both groups together, the file starting with "X_…" contains the bulk of the recordings. Each row in the file represents one sampling of data. The number of rows therefore represent the number of total readings, collected from the set of individuals. And each of the 561 columns represent a particular feature of the data reading, ie acceleration or mean.

The file starting with "y_…" then corresponds to the activity that that entry in recording in the "X_…" data file. Each row entry in "X_…" should correspond with each row entry in "y_…".

For the file starting with "subject_…", each row entry then corresponds to identify which volunteer is performing the recording for that reading. Therefore we should expect the number of row entries in all 3 files to be the same.

Main folder:

The activity_labels.txt file contains the activity and the corresponding enumerations.
The features.txt file contains the list of 561 features for each row of observations.


Steps in R script:

I will elaborate here the steps taken in the "run_analysis.R" script file. There are comments included in the file as well. I may not have followed the steps sequence exactly as specified in the course instructions, without sacrificing any data integrity or compromising the result.

We act on the test data first:
1. Read in the data features.txt, ensuring its not converted into factors.
2. Read in X_test.txt, and y_test.txt, ensuring that its not converted into factors.
3. Read in subject_test.txt
4. Use grep and regular expression to retrieve out the indexes of strings "mean()" and "std()" taking care to ignore capitals. Taking reference from features_info.txt, we shall not consider any other variables as std or mean.
5. Keep only the data containing the indexes found in previous step
6. Add the "activity" and "subjects" columns. Activity referring to the actions in activity_labels.txt, and "subjects" referring to the volunteers.
7. Retrieve out the feature names for mean and std
8. Add in 2 header titles for "activity" and "subject".

Now we act on the training data:
9. We read in X_train.txt, y_train.txt, and subject_train.txt
10. We get the data containing mean and std only, with the index found earlier.
11. We add in the "activity" and "subject" data as columns.
12. We finally combine the above set of test data with this set of training data.
13. Now we rename the header titles putting the full name for acceleration, gyroscope, and magnitude. We also replace "-" and ".." with a single "."
14. We set all header titles to lower case.
15. We set the new header titles to the combined data set.
16, Now we rename all the activity enumerations with their respective action names.
17. We output into csv file the training data, test data, and final combined data for verifying purposes. "traindata.csv"/"testdata.csv"/"final.csv"

Generate final average data set:
18. We load the "ply" library to use ddply. We use colMeans here to get the average of all features, grouped by subject and activity. 
19. We rename the header title, concatenating "ave." to all title names.
20. We ensure that the first 2 columns for "subject" and "activity" does not get concatenated as well.
21. We set this new header title to the average data set.
22. Finally, we write the data set to "finalAve.txt".


