# GetAndTidyData

This dataset used in this analysis is found on the  [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) website.
The run_analysis.R file contains the script which reduces this dataset to only include features that represent measurements of mean and standard deviation. It then goes on to calculate the average of each variable for each activity and each subject. 
The CodeBook.md file contains a description of how the features were selected and how the names were changed to make more descriptive. 
The tidyAverages.csv file contains the dataset that contains the average of each feature for each activity and subject.

Below is a more detailed explanation.

1. Read in the train and test data
2. Merge the training and test sets to create one data set by appending the test rows to the bottom of the train rows. This data came from the X_train.txt and the X_test.txt files in the original dataset.
3. Extract only the measurements on the mean and standard deviation for each measurement. The names of the features came from the features.txt file from the original dataset. If the feature name contained either "mean" or "std" in the name, then it is included in the reduced dataset.
4. Use descriptive activity names to name the activities in the data set. This is done by combining the labels from the y_train.txt and y_test.txt files. The values are then used to index into the activities located in activity_labels.txt to find a descriptive name that is then used as the label the corresponding row. The labels are then added to the dataset as a column.
5. Label appropriately the data set with descriptive variable names. This step searched for patterns in the column name and replaced them with more descriptive names.
6. Create an independent tidy data set with the average of each variable for each activity and each subject and then write it to a .csv file.

