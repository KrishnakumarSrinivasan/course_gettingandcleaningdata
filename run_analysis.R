library(plyr)
######## 1.Merges the training and the test sets to create one data set.

## Read subject (test and training) datasets
	df_sub_test <- read.table("subject_test.txt",header=FALSE)
	df_sub_train <- read.table("subject_train.txt",header=FALSE)

## form the combined subject dataset
	df_sub <- rbind(df_sub_test,df_sub_train)

##remove the intermediatory dataframes
	rm(df_sub_test,df_sub_train)

## Read X (test and training) datasets
	df_x_test <- read.table("X_test.txt",header=FALSE)
	df_x_train <- read.table("X_train.txt",header=FALSE)

## form the combined subject dataset
	df_x <- rbind(df_x_test,df_x_train)

##remove the intermediatory dataframes
	rm(df_x_test,df_x_train)

## Read Y (test and training) datasets

	df_y_test <- read.table("Y_test.txt",header=FALSE)
	df_y_train <- read.table("Y_train.txt",header=FALSE)

## form the combined subject dataset
	df_y <- rbind(df_y_test,df_y_train)

##remove the intermediatory dataframes
	rm(df_y_test,df_y_train)

#######2.Extracts only the measurements on the mean and standard deviation for each measurement.

	df_x_labels <- read.table("features.txt",header=FALSE)

## extract  mean() or std() labels alone
## the indices are captured
	df_x_sub_labels <- grep("-(mean|std)\\(\\)", df_x_labels[, 2])

# extract only the required data
	df_x_sub <- df_x[, df_x_sub_labels]
##remove the intermediatory dataframe
	rm(df_x)


# associate the labels with the subset data
	names(df_x_sub) <- df_x_labels[df_x_sub_labels, 2]

########3.Uses descriptive activity names to name the activities in the data set
	df_act <- read.table("activity_labels.txt",header=FALSE)

### associate with activity names
	df_y[, 1] <- df_act[df_y[, 1], 2]

## associate the label with the y dataset
	names(df_y) <- c("Activity")


##########4.Appropriately labels the data set with descriptive variable names. 

## associate the label with the subject dataset
	names(df_sub) <- c("Subject")
##associate appropriate labels for std and mean measurements
	names(df_x_sub) <- gsub('\\-mean',".Mean",names(df_x_sub))
	names(df_x_sub) <- gsub('\\-std',".StandardDeviation",names(df_x_sub))

## since all the steps except for the average is done, so combine all of the datasets

df_all <- cbind(df_x_sub, df_y, df_sub)

##remove the intermediatory dataframes
	rm(df_x_sub,df_y,df_sub,df_x_labels,df_x_sub_labels,df_act)


#######5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	df_final = ddply(df_all, c("Subject","Activity"), numcolwise(mean))
	write.table(df_final, file = "tidy_dataset.txt",row.names=FALSE)

##remove the intermediatory dataframes
	rm(df_all,df_final)

