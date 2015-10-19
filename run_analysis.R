## Pre-Assignment

# Read in the data from files

YTest <- read.table("UCI HAR Dataset/test/y_test.txt")
XTest <- read.table("UCI HAR Dataset/test/X_test.txt")
SubjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
YTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
XTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
SubjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
Features <- read.table("UCI HAR Dataset/features.txt")

# Assign Variables and names

colnames(XTrain) <- t(Features[2])
colnames(XTest) <- t(Features[2])

XTrain$activities <- YTrain[, 1]
XTrain$participants <- SubjectTrain[, 1]
XTest$activities <- YTest[, 1]
XTest$participants <- SubjectTest[, 1]

## Assignment Tasks

# 1) Merges the training and the test sets to create one data set.

DataSet <- rbind(XTrain, XTest)
duplicated(colnames(DataSet))
DataSet <- DataSet[, !duplicated(colnames(DataSet))]

# 2) Extracts only the measurements on the mean and standard deviation for each measurement.

Mean <- grep("mean()", names(DataSet), value = FALSE, fixed = TRUE)
OnlyMeans <- DataSet[Mean]
STD <- grep("std()", names(DataSet), value = FALSE)
OnlySTD <- DataSet[STD]

# 3) Uses descriptive activity names to name the activities in the data set

DataSet$activities <- as.character(DataSet$activities)
DataSet$activities[DataSet$activities == 1] <- "Walking"
DataSet$activities[DataSet$activities == 2] <- "Walking Upstairs"
DataSet$activities[DataSet$activities == 3] <- "Walking Downstairs"
DataSet$activities[DataSet$activities == 4] <- "Sitting"
DataSet$activities[DataSet$activities == 5] <- "Standing"
DataSet$activities[DataSet$activities == 6] <- "Laying"
DataSet$activities <- as.factor(DataSet$activities)

# 4) Appropriately labels the data set with descriptive variable names.

# Labeling the variables

names(DataSet) <- gsub("Acc", "Accelerator", names(DataSet))
names(DataSet) <- gsub("Mag", "Magnitude", names(DataSet))
names(DataSet) <- gsub("Gyro", "Gyroscope", names(DataSet))
names(DataSet) <- gsub("^t", "Time", names(DataSet))
names(DataSet) <- gsub("^f", "Frequency", names(DataSet))
names(DataSet) <- gsub("-mean\\(\\)", "Mean", names(DataSet))
names(DataSet) <- gsub("-std\\(\\)", "StdDev", names(DataSet))

# Labeling the Participants
# I played for a while trying to use loop here but didn't work, I'm curious how to do that, if you know please comment on the evaluation

DataSet$activities <- as.character(DataSet$activities)
DataSet$activities[DataSet$activities == 1] <- "Participant 01"
DataSet$activities[DataSet$activities == 2] <- "Participant 02"
DataSet$activities[DataSet$activities == 3] <- "Participant 03"
DataSet$activities[DataSet$activities == 4] <- "Participant 04"
DataSet$activities[DataSet$activities == 5] <- "Participant 05"
DataSet$activities[DataSet$activities == 6] <- "Participant 06"
DataSet$activities[DataSet$activities == 7] <- "Participant 07"
DataSet$activities[DataSet$activities == 8] <- "Participant 08"
DataSet$activities[DataSet$activities == 9] <- "Participant 09"
DataSet$activities[DataSet$activities == 10] <- "Participant 10"
DataSet$activities[DataSet$activities == 11] <- "Participant 11"
DataSet$activities[DataSet$activities == 12] <- "Participant 12"
DataSet$activities[DataSet$activities == 13] <- "Participant 13"
DataSet$activities[DataSet$activities == 14] <- "Participant 14"
DataSet$activities[DataSet$activities == 15] <- "Participant 15"
DataSet$activities[DataSet$activities == 16] <- "Participant 16"
DataSet$activities[DataSet$activities == 17] <- "Participant 17"
DataSet$activities[DataSet$activities == 18] <- "Participant 18"
DataSet$activities[DataSet$activities == 19] <- "Participant 19"
DataSet$activities[DataSet$activities == 20] <- "Participant 20"
DataSet$activities[DataSet$activities == 21] <- "Participant 21"
DataSet$activities[DataSet$activities == 22] <- "Participant 22"
DataSet$activities[DataSet$activities == 23] <- "Participant 23"
DataSet$activities[DataSet$activities == 24] <- "Participant 24"
DataSet$activities[DataSet$activities == 25] <- "Participant 25"
DataSet$activities[DataSet$activities == 26] <- "Participant 26"
DataSet$activities[DataSet$activities == 27] <- "Participant 27"
DataSet$activities[DataSet$activities == 28] <- "Participant 28"
DataSet$activities[DataSet$activities == 29] <- "Participant 29"
DataSet$activities[DataSet$activities == 30] <- "Participant 30"
DataSet$participants <- as.factor(DataSet$participants)

# 5) Create a tidy data set with the average of each variable for each activity and each subject

DataSet.dt <- data.table(DataSet)

TidyData <- DataSet.dt[, lapply(.SD, mean), by = 'participants, activities']
write.table(TidyData, file = "Tidy.txt", row.names = FALSE)
