### Human Activity Recognition Using Smartphones Dataset

This Repo contains an R script (**run_analysis.R**) on how raw data were cleaned and exported as a dataset.

The final dataset (**SportDataset.txt**) is the result of the merge of "test" & "train" data.

It also extracts the measurements on the mean & standard deviation for each measuremeant, discarding the rest of the data.

-------------

### CodeBook (**SportDataset.txt**):
Rows: 10299, Columns: 563
* LabelCode: refers to the number of the activity (1 to 6).
* LabelName: refers to the name of the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* Subject: refers to the ID of the volunteer performing the activity.
* {All remaining columns}: the mean or standard deviation for a specific measurement used in the test.

-------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The original data can be obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description on how the data was collected is available on:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

-------------

PM02 - February 2015