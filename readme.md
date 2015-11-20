run_analysis.R does the following functions
(a)	Reads the training and testing data from the various files(subject_test.txt,subject_train.txt,X_test.txt,X_train.txt,Y_test.txt,Y_train.txt)
(b)	Merges the x training and test data, y training and test data, subject training and test data using the rbind function
(c)	Measurement labels are read from "features.txt"
(d)	Since a subset of measurement only needs to further processed on, the subset of measurement from the combined x dataset is captured  and  assigned with the associate label names
(e)	Extracts descriptive activity names from "activity_labels.txt" to name the activities dataset ( y dataset)
(f)	Associates the “subject” label with the subject dataset (sub dataset)
(g)	Combines the x,y and subject dataset so that further analysis can be done on the combined dataset
(h)	Creates an independent tidy data set with the average of each variable for each activity and each subject.
(i)	Writes the contents of the newly created tidy data set (in step (h)) into tidy_dataset.txt

Pre-condition
--------------------------
(a). All of the sets needs to be present in the current working directory
 
Run Method
------------------
Source the run_analysis.R in  R environment

Output
-----------
Tidy_dataset.txt gets created in the current working directory. 

