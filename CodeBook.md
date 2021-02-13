DATA DICTIONARY - Human Activity Recognition Using Smartphones Dataset

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The original dataset can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The original dataset was reduced to contain only those features whose names included "mean" or "std".

Below is a list of the original feature names filtered by "mean" and "std" followed by a more understandable descriptive name based
on the information in the features_info.txt file.

Transformations applied include:
Acc -> acceleration
Gyro -> gyroscope
std -> standared_deviation
Mag -> magnitude
t (at the beginning of the name) -> time
f (at the beginning of the name) -> frequency

Features [1 - 79] are numeric and are the measurements taken using the smartphone.
Feature [80] is the activity the person was doing when the measurement was taken
Feature [81] is the subject's identification number


The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

The complete feature vector is listed below:

 [1]"tBodyAcc-mean()-X"
	 "time_of_body_acceleration_signal_mean_of_X_coordinate"                        
 [2] "tBodyAcc-mean()-Y"
	"time_of_body_acceleration_signal_mean_of_Y_coordinate"                        
 [3] "tBodyAcc-mean()-Z"
	"time_of_body_acceleration_signal_mean_of_Z_coordinate"                        
 [4] "tBodyAcc-std()-X"
	"time_of_body_acceleration_signal_standard_deviation_of_X_coordinate"          
 [5] "tBodyAcc-std()-Y"
	"time_of_body_acceleration_signal_standard_deviation_of_Y_coordinate"          
 [6] "tBodyAcc-std()-Z"
	"time_of_body_acceleration_signal_standard_deviation_of_Z_coordinate"          
 [7] "tGravityAcc-mean()-X"
	"time_of_gravity_acceleration_signal_mean_of_X_coordinate"                     
 [8] "tGravityAcc-mean()-Y"
	"time_of_gravity_acceleration_signal_mean_of_Y_coordinate"                     
 [9] "tGravityAcc-mean()-Z"
	"time_of_gravity_acceleration_signal_mean_of_Z_coordinate"                     
[10] "tGravityAcc-std()-X"
	"time_of_gravity_acceleration_signal_standard_deviation_of_X_coordinate"       
[11] "tGravityAcc-std()-Y"
	"time_of_gravity_acceleration_signal_standard_deviation_of_Y_coordinate"       
[12] "tGravityAcc-std()-Z"
	"time_of_gravity_acceleration_signal_standard_deviation_of_Z_coordinate"       
[13] "tBodyAccJerk-mean()-X"
	"time_of_body_acceleration_jerk_signal_mean_of_X_coordinate"                   
[14] "tBodyAccJerk-mean()-Y"
	"time_of_body_acceleration_jerk_signal_mean_of_Y_coordinate"                   
[15] "tBodyAccJerk-mean()-Z"
	"time_of_body_acceleration_jerk_signal_mean_of_Z_coordinate"                   
[16] "tBodyAccJerk-std()-X"
	"time_of_body_acceleration_jerk_signal_standard_deviation_of_X_coordinate"     
[17] "tBodyAccJerk-std()-Y"
	"time_of_body_acceleration_jerk_signal_standard_deviation_of_Y_coordinate"     
[18] "tBodyAccJerk-std()-Z"
	"time_of_body_acceleration_jerk_signal_standard_deviation_of_Z_coordinate"     
[19] "tBodyGyro-mean()-X"
	"time_of_body_gyroscope_signal_mean_of_X_coordinate"                           
[20] "tBodyGyro-mean()-Y"
	"time_of_body_gyroscope_signal_mean_of_Y_coordinate"                           
[21] "tBodyGyro-mean()-Z"
	"time_of_body_gyroscope_signal_mean_of_Z_coordinate"                           
[22] "tBodyGyro-std()-X"
	"time_of_body_gyroscope_signal_standard_deviation_of_X_coordinate"             
[23] "tBodyGyro-std()-Y"
	"time_of_body_gyroscope_signal_standard_deviation_of_Y_coordinate"             
[24] "tBodyGyro-std()-Z"
	"time_of_body_gyroscope_signal_standard_deviation_of_Z_coordinate"             
[25] "tBodyGyroJerk-mean()-X"
	"time_of_body_gyroscope_jerk_signal_mean_of_X_coordinate"                      
[26] "tBodyGyroJerk-mean()-Y"
	"time_of_body_gyroscope_jerk_signal_mean_of_Y_coordinate"                      
[27] "tBodyGyroJerk-mean()-Z"
	"time_of_body_gyroscope_jerk_signal_mean_of_Z_coordinate"                      
[28] "tBodyGyroJerk-std()-X"
	"time_of_body_gyroscope_jerk_signal_standard_deviation_of_X_coordinate"        
[29] "tBodyGyroJerk-std()-Y"
	"time_of_body_gyroscope_jerk_signal_standard_deviation_of_Y_coordinate"        
[30] "tBodyGyroJerk-std()-Z"
	"time_of_body_gyroscope_jerk_signal_standard_deviation_of_Z_coordinate"        
[31] "tBodyAccMag-mean()"
	"time_of_body_acceleration_magnitude_signal_mean"                              
[32] "tBodyAccMag-std()"
	"time_of_body_acceleration_magnitude_signal_standard_deviation"                
[33] "tGravityAccMag-mean()"
	"time_of_gravity_acceleration_magnitude_signal_mean"                           
[34] "tGravityAccMag-std()"
	"time_of_gravity_acceleration_magnitude_signal_standard_deviation"             
[35] "tBodyAccJerkMag-mean()"
	"time_of_body_acceleration_jerk_magnitude_signal_mean"                         
[36] "tBodyAccJerkMag-std()"
	"time_of_body_acceleration_jerk_magnitude_signal_standard_deviation"           
[37] "tBodyGyroMag-mean()"
	"time_of_body_gyroscope_magnitude_signal_mean"                                 
[38] "tBodyGyroMag-std()"
	"time_of_body_gyroscope_magnitude_signal_standard_deviation"                   
[39] "tBodyGyroJerkMag-mean()"
	"time_of_body_gyroscope_jerk_magnitude_signal_mean"                            
[40] "tBodyGyroJerkMag-std()"
	"time_of_body_gyroscope_jerk_magnitude_signal_standard_deviation"              
[41] "fBodyAcc-mean()-X"
	"frequency_of_body_acceleration_signal_mean_of_X_coordinate"                   
[42] "fBodyAcc-mean()-Y"
	"frequency_of_body_acceleration_signal_mean_of_Y_coordinate"                   
[43] "fBodyAcc-mean()-Z"
	"frequency_of_body_acceleration_signal_mean_of_Z_coordinate"                   
[44] "fBodyAcc-std()-X"
	"frequency_of_body_acceleration_signal_standard_deviation_of_X_coordinate"     
[45] "fBodyAcc-std()-Y"
	"frequency_of_body_acceleration_signal_standard_deviation_of_Y_coordinate"     
[46] "fBodyAcc-std()-Z"
	"frequency_of_body_acceleration_signal_standard_deviation_of_Z_coordinate"     
[47] "fBodyAcc-meanFreq()-X"
	"frequency_of_body_acceleration_signal_mean_frequency_of_X_coordinate"         
[48] "fBodyAcc-meanFreq()-Y"
	"frequency_of_body_acceleration_signal_mean_frequency_of_Y_coordinate"         
[49] "fBodyAcc-meanFreq()-Z"
	"frequency_of_body_acceleration_signal_mean_frequency_of_Z_coordinate"         
[50] "fBodyAccJerk-mean()-X"
	"frequency_of_body_acceleration_jerk_signal_mean_of_X_coordinate"              
[51] "fBodyAccJerk-mean()-Y"
	"frequency_of_body_acceleration_jerk_signal_mean_of_Y_coordinate"              
[52] "fBodyAccJerk-mean()-Z"
	"frequency_of_body_acceleration_jerk_signal_mean_of_Z_coordinate"              
[53] "fBodyAccJerk-std()-X"
	"frequency_of_body_acceleration_jerk_signal_standard_deviation_of_X_coordinate"
[54] "fBodyAccJerk-std()-Y"
	"frequency_of_body_acceleration_jerk_signal_standard_deviation_of_Y_coordinate"
[55] "fBodyAccJerk-std()-Z"
	"frequency_of_body_acceleration_jerk_signal_standard_deviation_of_Z_coordinate"
[56] "fBodyAccJerk-meanFreq()-X"
	"frequency_of_body_acceleration_jerk_signal_mean_frequency_of_X_coordinate"    
[57] "fBodyAccJerk-meanFreq()-Y"
	"frequency_of_body_acceleration_jerk_signal_mean_frequency_of_Y_coordinate"    
[58] "fBodyAccJerk-meanFreq()-Z"
	"frequency_of_body_acceleration_jerk_signal_mean_frequency_of_Z_coordinate"    
[59] "fBodyGyro-mean()-X"
	"frequency_of_body_gyroscope_signal_mean_of_X_coordinate"                      
[60] "fBodyGyro-mean()-Y"
	"frequency_of_body_gyroscope_signal_mean_of_Y_coordinate"                      
[61] "fBodyGyro-mean()-Z"
	"frequency_of_body_gyroscope_signal_mean_of_Z_coordinate"                      
[62] "fBodyGyro-std()-X"
	"frequency_of_body_gyroscope_signal_standard_deviation_of_X_coordinate"        
[63] "fBodyGyro-std()-Y"
	"frequency_of_body_gyroscope_signal_standard_deviation_of_Y_coordinate"        
[64] "fBodyGyro-std()-Z"
	"frequency_of_body_gyroscope_signal_standard_deviation_of_Z_coordinate"        
[65] "fBodyGyro-meanFreq()-X"
	"frequency_of_body_gyroscope_signal_mean_frequency_of_X_coordinate"            
[66] "fBodyGyro-meanFreq()-Y"
	"frequency_of_body_gyroscope_signal_mean_frequency_of_Y_coordinate"            
[67] "fBodyGyro-meanFreq()-Z"
	"frequency_of_body_gyroscope_signal_mean_frequency_of_Z_coordinate"            
[68] "fBodyAccMag-mean()"
	"frequency_of_body_acceleration_magnitude_signal_mean"                         
[69] "fBodyAccMag-std()"
	"frequency_of_body_acceleration_magnitude_signal_standard_deviation"           
[70] "fBodyAccMag-meanFreq()"
	"frequency_of_body_acceleration_magnitude_signal_mean_frequency"               
[71] "fBodyBodyAccJerkMag-mean()"
	"frequency_of_body_body_acceleration_jerk_magnitude_signal_mean"               
[72] "fBodyBodyAccJerkMag-std()"
	"frequency_of_body_body_acceleration_jerk_magnitude_signal_standard_deviation" 
[73] "fBodyBodyAccJerkMag-meanFreq()"
	"frequency_of_body_body_acceleration_jerk_magnitude_signal_mean_frequency"     
[74] "fBodyBodyGyroMag-mean()"
	"frequency_of_body_body_gyroscope_magnitude_signal_mean"                       
[75] "fBodyBodyGyroMag-std()"
	"frequency_of_body_body_gyroscope_magnitude_signal_standard_deviation"         
[76] "fBodyBodyGyroMag-meanFreq()"
	"frequency_of_body_body_gyroscope_magnitude_signal_mean_frequency"             
[77] "fBodyBodyGyroJerkMag-mean()"
	"frequency_of_body_body_gyroscope_jerk_magnitude_signal_mean"                  
[78] "fBodyBodyGyroJerkMag-std()"
	"frequency_of_body_body_gyroscope_jerk_magnitude_signal_standard_deviation"    
[79] "fBodyBodyGyroJerkMag-meanFreq()"
	"frequency_of_body_body_gyroscope_jerk_magnitude_signal_mean_frequency"
[80] "activity"
	The position the subject was in when the measurement was taken
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING
[81] "subject_ids"
	The id of the subject being tested.
	Values: 1 - 30
