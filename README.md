# 3gettingcleaningcourse


So what i understand from the studying and observing the data, is that there are a total of 30 volunteers in this study. They are performing a set of 6 different activities eg. walking or sitting. And their movements are being captured by a sensor device.

21 (70%) of the volunteers are randomly picked for the training dataset.
9 (30%) of the volunteers are randomly picked for the testing dataset.

Looking at both groups together, the file starting with "X_…" contains the bulk of the recordings. Each row in the file represents one sampling of data. The number of rows therefore represent the number of total readings, collected from the set of individuals. And each of the 561 columns represent a particular feature of the data reading, ie acceleration or mean.

The file starting with "y_…" then corresponds to the activity that that entry in recording in the "X_…" data file. Each row entry in "X_…" should correspond with each row entry in "y_…".

For the file starting with "subject_…", each row entry then corresponds to identify which volunteer is performing the recording for that reading. Therefore we should expect the number of row entries in all 3 files to be the same.

