run_analysis.R essentially 
(a)Reads data from test and training datasets. 
(b) Combines these datasets
(c) Assigns the appropriate labels to the dataset
(d) Selects a subset of measurements specified
(f)  Computes the average of each measurement by activity and by subject
(g)  Stores the results in tidy_dataset.txt
The Files processed for analysis are
subject_test.txt
subject_train.txt
X_test.txt
X_train.txt
Y_test.txt
Y_train.txt 
features.txt
activity_labels.txt
The variables used in run_analysis.R are
df_x_test – Captures the data read from x_test.txt
df_x_train- Captures the data read from x_train.txt
df_y_test – Captures the data read from y_test.txt
df_y_train – Captures the data read from y_train.txt
df_sub_test – Captures the data read from subject_test.txt
df_sub_train – Captures the data read from subject_train.txt
df_x – Contains the combined data from df_x_test,df_x_train
df_y – Contains the combined data from df_y_test,df_y_train
df_sub – Contains the combined data from df_sub_test,df_sub_train
df_x_labels – Contains the labels read from features.txt
df_x_sub_labels – Contains the subset of labels required (std() and mean())
df_x_sub- Contains the subset of measurements based on reqeuirements (std() and mean() measurements)
df_act- Contains the activity list read from activity_labels.txt
df_all – Contains the combined dataset from df_x,df-y and df_sub
df_final- Contains the final data . The final data is a collection of average of measurements by activity and subject
tidy_dataset.txt – Contains the final result. It is nothing but copy of df_final data frame.