## get features
setwd("~/Desktop/UCI HAR Dataset")
features = read.table('features.txt', stringsAsFactors = FALSE)

## read in all test data
setwd("~/Desktop/UCI HAR Dataset/test")
xtest = read.table('X_test.txt')
ytest = read.table('y_test.txt', stringsAsFactors = FALSE)  #actions
subjecttest = read.table('subject_test.txt')



## get all mean and std indexes
meanindex = grep("mean\\(\\)", features[,2], ignore.case=TRUE)
stdindex = grep("std\\(\\)", features[,2], ignore.case=TRUE)

## get only std and mean data
mnstd.data = xtest[, c(stdindex, meanindex)]


## combine them nicely column wise, with subject, action, followed by main readings
cb = cbind(ytest , mnstd.data, stringsAsFactors= FALSE)
cb = cbind(subjecttest, cb)

## get only std and mean headers
mnstd.header = features[c(stdindex, meanindex), 2]

## add 2 header titles
mnstd.header = c("activity", mnstd.header)
mnstd.header = c("subject", mnstd.header)


## Do the same for training data
setwd("~/Desktop/UCI HAR Dataset/train")
xtrain = read.table('X_train.txt')
ytrain = read.table('y_train.txt', stringsAsFactors = FALSE)  #actions
subjecttrain = read.table('subject_train.txt')

mnstd.data = xtrain[, c(stdindex, meanindex)]

cb2 = cbind(ytrain , mnstd.data, stringsAsFactors= FALSE)
cb2 = cbind(subjecttrain, cb2)

## combine test and training data
cb.final = rbind(cb, cb2)

## rename header
mnstd.header = gsub("Acc", ".acceleration.", mnstd.header)
mnstd.header = gsub("Gyro", ".gyroscope.", mnstd.header)
mnstd.header = gsub("Mag", ".magnitude.", mnstd.header)
mnstd.header = gsub("-", ".", mnstd.header)
mnstd.header = gsub("\\.\\.", ".", mnstd.header)
mnstd.header = tolower(mnstd.header)

colnames(cb.final) = mnstd.header


## parse the activities into readable form
cb.final[,2] = gsub(1,"WALKING",cb.final[,2]) #take 2nd column only
cb.final[,2] = gsub(2,"WALKING_UPSTAIRS",cb.final[,2])
cb.final[,2] = gsub(3,"WALKING_DOWNSTAIRS",cb.final[,2])
cb.final[,2] = gsub(4,"SITTING",cb.final[,2])
cb.final[,2] = gsub(5,"STANDING",cb.final[,2])
cb.final[,2] = gsub(6,"LAYING",cb.final[,2])
cb.final[,2] = as.data.frame(cb.final[,2]) #make sure its a dataframe

## for checking
write.csv(cb, "traindata.csv")
write.csv(cb2, "testdata.csv")
write.csv(cb.final, "final.csv")

## get average group by subject, and activity
library(plyr)
ave.data = ddply(cb.final, .(subject, activity), function(df) colMeans(df[,3:68]))
## rename the header
mnstd.header.ave = paste('ave.', mnstd.header , sep='')
mnstd.header.ave = gsub('ave.subject', 'subject', mnstd.header.ave)
mnstd.header.ave = gsub('ave.activity', 'activity', mnstd.header.ave)
colnames(ave.data) = mnstd.header.ave

## write to text file
write.table(ave.data, file='finalAve.txt', row.name=FALSE)

