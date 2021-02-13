library(dplyr)
library(stringr)
library(readr)
# Read in the train and test data
xtrain <- read.table('UCI HAR Dataset/train/X_train.txt', stringsAsFactors = FALSE) # train features
ytrain <- read.table('UCI HAR Dataset/train/y_train.txt', stringsAsFactors = FALSE) # train labels as numbers
trainids <- read.table('UCI HAR Dataset/train/subject_train.txt', stringsAsFactors = FALSE) # train subject ids
xtest <- read.table('UCI HAR Dataset/test/X_test.txt', stringsAsFactors = FALSE) # test features
ytest <- read.table('UCI HAR Dataset/test/y_test.txt', stringsAsFactors = FALSE) # test labels as numbers
testids <- read.table('UCI HAR Dataset/test/subject_test.txt', stringsAsFactors = FALSE) # test subject ids

# 1. Merge the training and test sets to create one data set.
data <- rbind(xtrain, xtest) # put the train rows first then append the test rows

# 2. Extract only the measurements on the mean and standard deviation for each measurement.
features <- read.table('UCI HAR Dataset/features.txt') # the names of all the features
names(data) <- features[[2]] # use the features to add column names to the data
meanStdData <- data[grepl('mean',names(data)) | grepl('std', names(data))] # select only columns with mean or std

# 3. Use descriptive activity names to name the activities in the data set
labels <- rbind(ytrain, ytest) # put the train lables first and then append the test labels
activities <- read.table('UCI HAR Dataset/activity_labels.txt') # get the activity names corresponding to the labels
f <- function(x) activities[x,2] # pick out the activity given an index
newlabels <- sapply(labels, f) # get all the activities corresponding to all the labels
meanStdData <- mutate(meanStdData, activity = newlabels[,1]) # add the activities to the dataset

# 4. Label appropriately the data set with descriptive variable names. 
meanStdFeatures <- names(meanStdData) # get the names of all the columns

# each command below searches for a pattern and replaces it with something more readable.
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'meanFreq\\(\\)-X', replacement = 'mean_frequency_of_X_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'meanFreq\\(\\)-Y', replacement = 'mean_frequency_of_Y_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'meanFreq\\(\\)-Z', replacement = 'mean_frequency_of_Z_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'meanFreq\\(\\)', replacement = 'mean_frequency')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'mean\\(\\)-X', replacement = 'mean_of_X_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'mean\\(\\)-Y', replacement = 'mean_of_Y_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'mean\\(\\)-Z', replacement = 'mean_of_Z_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'std\\(\\)-X', replacement = 'standard_deviation_of_X_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'std\\(\\)-Y', replacement = 'standard_deviation_of_Y_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'std\\(\\)-Z', replacement = 'standard_deviation_of_Z_coordinate')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'mean\\(\\)', replacement = 'mean')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'std\\(\\)', replacement = 'standard_deviation')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'Jerk-', replacement = '_jerk_signal_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'JerkMag-', replacement = '_jerk_magnitude_signal_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'Mag-', replacement = '_magnitude_signal_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'tBodyAcc-', replacement = 'time_of_body_acceleration_signal_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'tBodyAcc_', replacement = 'time_of_body_acceleration_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'tBodyGyro-', replacement = 'time_of_body_gyroscope_signal_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'tBodyGyro_', replacement = 'time_of_body_gyroscope_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'tGravityAcc-', replacement = 'time_of_gravity_acceleration_signal_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'tGravityAcc_', replacement = 'time_of_gravity_acceleration_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'fBodyAcc-', replacement = 'frequency_of_body_acceleration_signal_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'fBodyAcc_', replacement = 'frequency_of_body_acceleration_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'fBodyBodyAcc_', replacement = 'frequency_of_body_body_acceleration_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'fBodyGyro-', replacement = 'frequency_of_body_gyroscope_signal_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'fBodyGyro_', replacement = 'frequency_of_body_gyroscope_')
meanStdFeatures <- str_replace_all(meanStdFeatures, pattern = 'fBodyBodyGyro_', replacement = 'frequency_of_body_body_gyroscope_')

names(meanStdData) <- meanStdFeatures # give the new names to the dataset

# 5. From the data set in step 4, create a second, independent tidy data set with the average of 
#    each variable for each activity and each subject.
subjectIds <- rbind(trainids, testids) # put the test subject ids on top of the train subject ids
meanStdData <- mutate(meanStdData, subject_ids = subjectIds[,1]) # add the subject id column to the dataset
df <- group_by(meanStdData, activity, subject_ids) # create a new dataset, grouping first by activity and then by subject id
averages <- df %>% summarize(across(is.numeric, mean)) # get the average of each group's numeric columns
write.csv(averages, 'tidyAverages.csv')
