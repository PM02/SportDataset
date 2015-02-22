## CodeBook (*SportDataset.txt*):
Please read the `README.md` file to on how to read to obtain and generate the result.

### Data Source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


### How result was obtained from data:
* Get data from both `train` and `test` records and merged together into a new dataset.
* Feature names are collected from `features.txt` and used as the dataset Columns' names.
* Activity Labels were collected from `activity_labels.txt`, each Label was paired to the corresponding label number in the dataset.
* Columns' names were cleaned and renamed to remove parentheses. 
* Final Data was grouped by each `Subject`, and `Activity`.


### Variables:
Rows: **180**, Columns: **50**<br>
Each Row is one observation, Columns are the measurements obtained through the test. 
`.X`, `.Y`, `.Z` is denotes 3-axial signals in the X, Y and Z directions.

* `Activity`: Refers to the name of the activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* `Subject`: Refers to the ID of the volunteer performing the activity.
* [**All remaining columns**]: Show the mean or standard deviation for a specific measurement used in the test , each for X,Y & Z axes.<br>
1- "tBodyAcc.mean.X"<br>
2- "tBodyAcc.mean.Y"<br>
3- "tBodyAcc.mean.Z"<br> 
4- "tBodyAcc.std.X"<br>
5- "tBodyAcc.std.Y"<br>
6- "tBodyAcc.std.Z"<br>
7- "tGravityAcc.mean.X"<br>
8- "tGravityAcc.mean.Y"<br>
9- "tGravityAcc.mean.Z"<br>
10- "tGravityAcc.std.X"<br>
11- "tGravityAcc.std.Y"<br>
12- "tGravityAcc.std.Z"<br>
13- "tBodyAccJerk.mean.X"<br> 
14- "tBodyAccJerk.mean.Y"<br>
15- "tBodyAccJerk.mean.Z"<br>
16- "tBodyAccJerk.std.X"<br>
17- "tBodyAccJerk.std.Y"<br>
18- "tBodyAccJerk.std.Z"<br>
19- "tBodyGyro.mean.X"<br>
20- "tBodyGyro.mean.Y"<br>
21- "tBodyGyro.mean.Z"<br>
22- "tBodyGyro.std.X"<br>
23- "tBodyGyro.std.Y"<br> 
24- "tBodyGyro.std.Z"<br>
25- "tBodyGyroJerk.mean.X"<br>
26- "tBodyGyroJerk.mean.Y"<br>
27- "tBodyGyroJerk.mean.Z"<br>
28- "tBodyGyroJerk.std.X"<br> 
29- "tBodyGyroJerk.std.Y"<br>
30- "tBodyGyroJerk.std.Z"<br>
31- "fBodyAcc.mean.X"<br>
32- "fBodyAcc.mean.Y"<br>
33- "fBodyAcc.mean.Z"<br> 
34- "fBodyAcc.std.X"<br>
35- "fBodyAcc.std.Y"<br>
36- "fBodyAcc.std.Z"<br>
37- "fBodyAccJerk.mean.X"<br>
38- "fBodyAccJerk.mean.Y"<br> 
39- "fBodyAccJerk.mean.Z"<br>
40- "fBodyAccJerk.std.X"<br>
41- "fBodyAccJerk.std.Y"<br>
42- "fBodyAccJerk.std.Z"<br>
43- "fBodyGyro.mean.X"<br>
44- "fBodyGyro.mean.Y"<br>
45- "fBodyGyro.mean.Z"<br>
46- "fBodyGyro.std.X"<br>
47- "fBodyGyro.std.Y"<br>
48- "fBodyGyro.std.Z"<br> 