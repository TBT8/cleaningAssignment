# Details from the Original Dataset
* The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

* Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

* Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

* These signals were used to estimate variables of the feature vector for each pattern:  
*'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

*The (relevant) set of variables that were estimated from these signals are: 

	mean(): Mean value
	std(): Standard deviation

# Tidy dataset
* The tidy dataset has the following variables:
 	"activity.subject" - Includes every combination of activity type and subject      
 
The following variables in the left hand column are also in the dataset.  They are all means of the variable in the right hand column from the original dataset, for all subject/activity combinations.

tbodyacc.mean.x.mean      	tBodyAcc-mean()-X          
tbodyacc.mean.y.mean      	tBodyAcc-mean()-Y          
tbodyacc.mean.z.mean      	tBodyAcc-mean()-Z          
tbodyacc.std.x.mean       	tBodyAcc-std()-X           
tbodyacc.std.y.mean       	tBodyAcc-std()-Y           
tbodyacc.std.z.mean       	tBodyAcc-std()-Z           
tgravityacc.mean.x.mean   	tGravityAcc-mean()-X       
tgravityacc.mean.y.mean   	tGravityAcc-mean()-Y       
tgravityacc.mean.z.mean   	tGravityAcc-mean()-Z       
tgravityacc.std.x.mean    	tGravityAcc-std()-X        
tgravityacc.std.y.mean    	tGravityAcc-std()-Y        
tgravityacc.std.z.mean    	tGravityAcc-std()-Z        
tbodyaccjerk.mean.x.mean  	tBodyAccJerk-mean()-X      
tbodyaccjerk.mean.y.mean  	tBodyAccJerk-mean()-Y      
tbodyaccjerk.mean.z.mean  	tBodyAccJerk-mean()-Z      
tbodyaccjerk.std.x.mean   	tBodyAccJerk-std()-X       
tbodyaccjerk.std.y.mean   	tBodyAccJerk-std()-Y       
tbodyaccjerk.std.z.mean   	tBodyAccJerk-std()-Z       
tbodygyro.mean.x.mean     	tBodyGyro-mean()-X         
tbodygyro.mean.y.mean     	tBodyGyro-mean()-Y         
tbodygyro.mean.z.mean     	tBodyGyro-mean()-Z         
tbodygyro.std.x.mean      	tBodyGyro-std()-X          
tbodygyro.std.y.mean      	tBodyGyro-std()-Y          
tbodygyro.std.z.mean      	tBodyGyro-std()-Z          
tbodygyrojerk.mean.x.mean 	tBodyGyroJerk-mean()-X     
tbodygyrojerk.mean.y.mean 	tBodyGyroJerk-mean()-Y     
tbodygyrojerk.mean.z.mean 	tBodyGyroJerk-mean()-Z     
tbodygyrojerk.std.x.mean  	tBodyGyroJerk-std()-X      
tbodygyrojerk.std.y.mean  	tBodyGyroJerk-std()-Y      
tbodygyrojerk.std.z.mean  	tBodyGyroJerk-std()-Z      
tbodyaccmag.mean.mean     	tBodyAccMag-mean()         
tbodyaccmag.std.mean      	tBodyAccMag-std()          
tgravityaccmag.mean.mean  	tGravityAccMag-mean()      
tgravityaccmag.std.mean   	tGravityAccMag-std()       
tbodyaccjerkmag.mean.mean 	tBodyAccJerkMag-mean()     
tbodyaccjerkmag.std.mean  	tBodyAccJerkMag-std()      
tbodygyromag.mean.mean    	tBodyGyroMag-mean()        
tbodygyromag.std.mean     	tBodyGyroMag-std()         
tbodygyrojerkmag.mean.mean	tBodyGyroJerkMag-mean()    
tbodygyrojerkmag.std.mean 	tBodyGyroJerkMag-std()     
fbodyacc.mean.x.mean      	fBodyAcc-mean()-X          
fbodyacc.mean.y.mean      	fBodyAcc-mean()-Y          
fbodyacc.mean.z.mean      	fBodyAcc-mean()-Z          
fbodyacc.std.x.mean       	fBodyAcc-std()-X           
fbodyacc.std.y.mean       	fBodyAcc-std()-Y           
fbodyacc.std.z.mean       	fBodyAcc-std()-Z           
fbodyaccjerk.mean.x.mean  	fBodyAccJerk-mean()-X      
fbodyaccjerk.mean.y.mean  	fBodyAccJerk-mean()-Y      
fbodyaccjerk.mean.z.mean  	fBodyAccJerk-mean()-Z      
fbodyaccjerk.std.x.mean   	fBodyAccJerk-std()-X       
fbodyaccjerk.std.y.mean   	fBodyAccJerk-std()-Y       
fbodyaccjerk.std.z.mean   	fBodyAccJerk-std()-Z       
fbodygyro.mean.x.mean     	fBodyGyro-mean()-X         
fbodygyro.mean.y.mean     	fBodyGyro-mean()-Y         
fbodygyro.mean.z.mean     	fBodyGyro-mean()-Z         
fbodygyro.std.x.mean      	fBodyGyro-std()-X          
fbodygyro.std.y.mean      	fBodyGyro-std()-Y          
fbodygyro.std.z.mean      	fBodyGyro-std()-Z          
fbodyaccmag.mean.mean     	fBodyAccMag-mean()         
fbodyaccmag.std.mean      	fBodyAccMag-std()          
fbodyaccjerkmag.mean.mean 	fBodyBodyAccJerkMag-mean() 
fbodyaccjerkmag.std.mean  	fBodyBodyAccJerkMag-std()  
fbodygyromag.mean.mean    	fBodyBodyGyroMag-mean()    
fbodygyromag.std.mean     	fBodyBodyGyroMag-std()     
fbodygyrojerkmag.mean.mean	fBodyBodyGyroJerkMag-mean()
fbodygyrojerkmag.std.mean	fBodyBodyGyroJerkMag-std()
