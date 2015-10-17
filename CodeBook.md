# Code Book

This code book summarizes the resulting data fields in `Tidy.txt`.

## Initial data

The data corresponds to the results of an experiment carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a Samsung Galaxy S II. For each record it is provided:

## Processed Data

In order to use more human-friendly names, the built-in funcion gsub() has been repeatedly used in order to make changes like for example:

tBodyAcc-mean()-Y --> TimeBodyAcceleratorMeanY

## Identifiers

* `participants` - The ID of the test subject
* `activities` - The type of activity performed when the corresponding measurements were taken:
  - Walking
  - Walking Upstairs
  - Walking Downstairs
  - Sitting
  - Standing
  - Laying

## Measurements

 - Time domain body acceleration mean along X, Y, and Z:
  - MeanTimeBodyAccMeanX
  - MeanTimeBodyAccMeanY
  - MeanTimeBodyAccMeanZ
 - Time domain body acceleration standard deviation along X, Y, and Z:
  - MeanTimeBodyAccStdDevX
  - MeanTimeBodyAccStdDevY
  - MeanTimeBodyAccStdDevZ
 - Time domain gravity acceleration mean along X, Y, and Z:
  - MeanTimeGravityAccMeanX
  - MeanTimeGravityAccMeanY
  - MeanTimeGravityAccMeanZ
 - Time domain gravity acceleration standard deviation along X, Y, and Z:
  - MeanTimeGravityAccStdDevX
  - MeanTimeGravityAccStdDevY
  - MeanTimeGravityAccStdDevZ
 - Time domain body jerk mean along X, Y, and Z:
  - MeanTimeBodyAccJerkMeanX
  - MeanTimeBodyAccJerkMeanY
  - MeanTimeBodyAccJerkMeanZ
 - Time domain body jerk standard deviation along X, Y, and Z:
  - MeanTimeBodyAccJerkStdDevX
  - MeanTimeBodyAccJerkStdDevY
  - MeanTimeBodyAccJerkStdDevZ
 - Time domain gyroscope mean along X, Y, and Z:
  - MeanTimeBodyGyroMeanX
  - MeanTimeBodyGyroMeanY
  - MeanTimeBodyGyroMeanZ
 - Time domain gyroscope standard deviation along X, Y, and Z:
  - MeanTimeBodyGyroStdDevX
  - MeanTimeBodyGyroStdDevY
  - MeanTimeBodyGyroStdDevZ
 - Time domain gyroscope jerk mean along X, Y, and Z:
  - MeanTimeBodyGyroJerkMeanX
  - MeanTimeBodyGyroJerkMeanY
  - MeanTimeBodyGyroJerkMeanZ
 - Time domain gyroscope jerk standard deviation along X, Y, and Z:
  - MeanTimeBodyGyroJerkStdDevX
  - MeanTimeBodyGyroJerkStdDevY
  - MeanTimeBodyGyroJerkStdDevZ
 - Time domain body acceleration magnitude mean:
  - MeanTimeBodyAccMagMean
 - Time domain body acceleration magnitude standard deviation:
  - MeanTimeBodyAccMagStdDev
 - Time domain gravity acceleration magnitude mean:
  - MeanTimeGravityAccMagMean
 - Time domain gravity acceleration magnitude standard deviation:
  - MeanTimeGravityAccMagStdDev
 - Time domain body jerk magnitude mean:
  - MeanTimeBodyAccJerkMagMean
 - Time domain body jerk magnitude standard deviation:
  - MeanTimeBodyAccJerkMagStdDev
 - Time domain gyroscope magnitude mean:
  - MeanTimeBodyGyroMagMean
 - Time domain gyroscope magnitude standard deviation:
  - MeanTimeBodyGyroMagStdDev
 - Time domain gyroscope jerk magnitude mean:
  - MeanTimeBodyGyroJerkMagMean
 - Time domain gyroscope jerk magnitude standard deviation:
  - MeanTimeBodyGyroJerkMagStdDev
 - Frequency domain body acceleration mean along X, Y, and Z:
  - MeanFrequencyBodyAccMeanX
  - MeanFrequencyBodyAccMeanY
  - MeanFrequencyBodyAccMeanZ
 - Frequency domain body acceleration standard deviation along X, Y, and Z:
  - MeanFrequencyBodyAccStdDevX
  - MeanFrequencyBodyAccStdDevY
  - MeanFrequencyBodyAccStdDevZ
 - Frequency domain body jerk mean along X, Y, and Z:
  - MeanFrequencyBodyAccJerkMeanX
  - MeanFrequencyBodyAccJerkMeanY
  - MeanFrequencyBodyAccJerkMeanZ
 - Frequency domain body jerk standard deviation along X, Y, and Z:
  - MeanFrequencyBodyAccJerkStdDevX
  - MeanFrequencyBodyAccJerkStdDevY
  - MeanFrequencyBodyAccJerkStdDevZ
 - Frequency domain gyroscope mean along X, Y, and Z:
  - MeanFrequencyBodyGyroMeanX
  - MeanFrequencyBodyGyroMeanY
  - MeanFrequencyBodyGyroMeanZ
 - Frequency domain gyroscope standard deviation along X, Y, and Z:
  - MeanFrequencyBodyGyroStdDevX
  - MeanFrequencyBodyGyroStdDevY
  - MeanFrequencyBodyGyroStdDevZ
 - Frequency domain body acceleration magnitude mean:
  - MeanFrequencyBodyAccMagMean
 - Frequency domain body acceleration magnitude standard deviation:
  - MeanFrequencyBodyAccMagStdDev
 - Frequency domain body jerk magnitude mean:
  - MeanFrequencyBodyAccJerkMagMean
 - Frequency domain body jerk magnitude standard deviation:
  - MeanFrequencyBodyAccJerkMagStdDev
 - Frequency domain gyroscope magnitude mean:
  - MeanFrequencyBodyGyroMagMean
 - Frequency domain gyroscope magnitude standard deviation:
  - MeanFrequencyBodyGyroMagStdDev
 - Frequency domain gyroscope jerk magnitude mean:
  - MeanFrequencyBodyGyroJerkMagMean
 - Frequency domain gyroscope jerk magnitude standard deviation:
  - MeanFrequencyBodyGyroJerkMagStdDev
