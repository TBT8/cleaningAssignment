## Create a vector with the column numbers we want from the test and train data sets
cols<-c(1:6,41:46,81:86,121:126,161:166,201,202,214
        ,215,227,228,240,241,253,254,266:271,345:350
        ,424:429,503,504,516,517,529,530,542,543)

## Read in the activity labels data set
activities <- read.table("activity_labels.txt", header=F, stringsAsFactors=F)
activities<- activities[,2]

## Substitute undescores for periods
activities <- gsub("\\_", "\\.", activities)

## Load in the features data set
col.names <- read.table("features.txt", header=F, stringsAsFactors=F)
col.names <- col.names[,2]

## Take only the column names we are interested in
col.names<- col.names[cols]

## Use gsub to make the names easier to read
col.names <- gsub("\\-", "\\.",col.names)
col.names <- gsub("\\(", "", col.names)
col.names <- gsub("\\)", "", col.names)
col.names <- gsub("BodyBody", "Body", col.names)

## Create names vector by adding in other relevant column names
col.names <- c("activity","subject",col.names)

## Create a vector that will be used to read in only the relevant data
cols1 <- rep("NULL", 561)
cols1[cols]<-"numeric"

## Read in the train and test data using cols1 to determine the relevant columns
x.train <- read.table("X_train.txt", header=F, colClasses=cols1)
x.test <- read.table("X_test.txt", header=F, colClasses=cols1)

## Read in the y data that will be used as the activities and subject columns
y.train <- read.table("y_train.txt", header=F)
subject.train <- read.table("subject_train.txt", header=F)
y.test <- read.table("y_test.txt", header=F)
subject.test <- read.table("subject_test.txt", header=F)

## Change the y data to lists to iterate in for loop
y.train <- as.list(y.train[,1])
y.test <- as.list(y.test[,1])

## Run for loops to change the activity numbers to names
for(i in 1:length(y.train)){
        y.train[[i]] <- activities[y.train[[i]]]
        
        }

for(i in 1:length(y.test)){
        y.test[[i]] <- activities[y.test[[i]]]
        
}

## Change lists back to vectors
y.train <- unlist(y.train)
y.test <- unlist(y.test)

## Cbind the subject and activity columns to the train and test data
merge.train.df <- cbind(y.train, subject.train, x.train, stringsAsFactors=F)
merge.test.df <- cbind(y.test , subject.test, x.test, stringsAsFactors=F)

## Add columns names and merge the test and train data into one data set
names(merge.train.df) <- col.names
names(merge.test.df) <- col.names
merge.all.df <- rbind(merge.train.df, merge.test.df)



##### 2nd Tidy Data Set; means

## Create a vector that contains a unique value for all of the subject/activity pairs
subject.activity<- as.factor(paste(merge.all.df$activity,merge.all.df$subject,sep="."))

## Add this new vector as a column to our data frame
merge.all.factor <- cbind(subject.activity, merge.all.df)

## Initialize a new data frame for our for loop
mean.df <- tapply(merge.all.factor[,4], merge.all.factor[,1],mean)

## Run for loop that calulates the mean for each of our variables over each subject
## and activity pair
for(i in 5:69){
        x <- tapply(merge.all.factor[,i], merge.all.factor[,1],mean)
        mean.df <- cbind(mean.df,x)
}

## change the new list to a data frame
mean.df <- as.data.frame(mean.df)

## Add the row names as a column
mean.df$subject.activity <- row.names(mean.df)

## Move the new column to the front
mean.df <- mean.df[,c(67,1:66)]

## Give numbers as the row names
row.names(mean.df) <- 1:180

## Create new column names by appending ".mean" to all the previous column names save the first two
names(mean.df) <- c("activity.subject",paste(names(merge.all.factor[,4:69]),".mean", sep=""))

## Change the name of the first data frame to avoid confusion
all.df<- merge.all.df

## Remove all the transitory vectors and data frames that were created
rm(merge.all.factor, merge.all.df, merge.test.df, merge.train.df, subject.test, subject.train, x.test, 
   x.train, activities, col.names, cols, cols1, i, subject.activity, x, y.test, y.train)

## Remove the capital letters in the column names
colnames(mean.df) <- tolower(colnames(mean.df))
colnames(all.df) <- tolower(colnames(all.df))