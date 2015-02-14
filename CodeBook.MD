Variables List in order:

"subject" 
"activity"
"ave.tbody.acceleration.std().x" 
"ave.tbody.acceleration.std().y" 
"ave.tbody.acceleration.std().z" 
"ave.tgravity.acceleration.std().x" 
"ave.tgravity.acceleration.std().y" 
"ave.tgravity.acceleration.std().z" 
"ave.tbody.acceleration.jerk.std().x" 
"ave.tbody.acceleration.jerk.std().y" 
"ave.tbody.acceleration.jerk.std().z" 
"ave.tbody.gyroscope.std().x" 
"ave.tbody.gyroscope.std().y" 
"ave.tbody.gyroscope.std().z" 
"ave.tbody.gyroscope.jerk.std().x" 
"ave.tbody.gyroscope.jerk.std().y" 
"ave.tbody.gyroscope.jerk.std().z" 
"ave.tbody.acceleration.magnitude.std()" 
"ave.tgravity.acceleration.magnitude.std()" 
"ave.tbody.acceleration.jerk.magnitude.std()" 
"ave.tbody.gyroscope.magnitude.std()" 
"ave.tbody.gyroscope.jerk.magnitude.std()" 
"ave.fbody.acceleration.std().x" 
"ave.fbody.acceleration.std().y" 
"ave.fbody.acceleration.std().z" 
"ave.fbody.acceleration.jerk.std().x" 
"ave.fbody.acceleration.jerk.std().y" 
"ave.fbody.acceleration.jerk.std().z" 
"ave.fbody.gyroscope.std().x" 
"ave.fbody.gyroscope.std().y" 
"ave.fbody.gyroscope.std().z" 
"ave.fbody.acceleration.magnitude.std()" 
"ave.fbodybody.acceleration.jerk.magnitude.std()" 
"ave.fbodybody.gyroscope.magnitude.std()" 
"ave.fbodybody.gyroscope.jerk.magnitude.std()" 
"ave.tbody.acceleration.mean().x" 
"ave.tbody.acceleration.mean().y" 
"ave.tbody.acceleration.mean().z" 
"ave.tgravity.acceleration.mean().x" 
"ave.tgravity.acceleration.mean().y"
"ave.tgravity.acceleration.mean().z" 
"ave.tbody.acceleration.jerk.mean().x" 
"ave.tbody.acceleration.jerk.mean().y" 
"ave.tbody.acceleration.jerk.mean().z" 
"ave.tbody.gyroscope.mean().x" 
"ave.tbody.gyroscope.mean().y" 
"ave.tbody.gyroscope.mean().z" 
"ave.tbody.gyroscope.jerk.mean().x" 
"ave.tbody.gyroscope.jerk.mean().y" 
"ave.tbody.gyroscope.jerk.mean().z" 
"ave.tbody.acceleration.magnitude.mean()" 
"ave.tgravity.acceleration.magnitude.mean()" 
"ave.tbody.acceleration.jerk.magnitude.mean()" 
"ave.tbody.gyroscope.magnitude.mean()" 
"ave.tbody.gyroscope.jerk.magnitude.mean()" 
"ave.fbody.acceleration.mean().x" 
"ave.fbody.acceleration.mean().y" 
"ave.fbody.acceleration.mean().z" 
"ave.fbody.acceleration.jerk.mean().x" 
"ave.fbody.acceleration.jerk.mean().y" 
"ave.fbody.acceleration.jerk.mean().z" 
"ave.fbody.gyroscope.mean().x" 
"ave.fbody.gyroscope.mean().y" 
"ave.fbody.gyroscope.mean().z" 
"ave.fbody.acceleration.magnitude.mean()" 
"ave.fbodybody.acceleration.jerk.magnitude.mean()" 
"ave.fbodybody.gyroscope.magnitude.mean()" 
"ave.fbodybody.gyroscope.jerk.magnitude.mean()"

Variables explanation:
"subject" identifies the volunteer whose data observation was collected from.
"activity" describes the action the volunteer was performing when that observation was recorded.
The rest of the variables are averaged values of the data that can be referenced from "features_info.txt" file.
See readme.md for more info.

Summary choices:
As required in the course, the features containing average and standard deviation readings were retrieved out from the original raw data.
This data was averaged across, grouped by the first 2 columns "subject" and "activity" 

Study design:
Data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
on 13 Feb 2015. The file was unzipped with default unzip utility and loaded in R 2.15.3 in Mac 10.6 environment.



