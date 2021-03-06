### Human Activity Recognition Using Smartphones Dataset

-------------

This Repo contains an R script (**run_analysis.R**) on how raw data were cleaned and exported as a dataset.
The final dataset (**SportDataset.txt**) is the result of the merge of "test" & "train" records.

It also extracts the measurements on the mean & standard deviation for each measuremeant, discarding the rest of the data.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

-------------

### How to run_analysis.R:
Notice: The R script requires *dplyr* library. 
**Step by Step comments are available within the file**
* Download the data from the link provided below (*end of document*) & copy **run_analysis.R** into the main working directory.
* Directory path e.g. `./main/run_analysis.R` - `./main/features.txt` - `./main/train/...` - `./main/test/...` - ...etc
* Sit back and relax.
* Output will be named **SportDataset.txt**, within the same working directory.

> To read dataset:
 `read.table("./SportDataset.txt", header = TRUE)`

-------------

The original data can be obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description on how the data was collected is available on:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

-------------

> Author: **PM02** - February 2015