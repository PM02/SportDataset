require(dplyr)
## Folder or subfolder containing the data
## Default: current working directory
folder <- "./"

## Read records from the Train Folder
train_1 <- read.table(paste(folder,"train/subject_train.txt", sep = ""))
train_x <- read.table(paste(folder,"train/X_train.txt", sep = ""))
train_y <- read.table(paste(folder,"train/y_train.txt", sep = ""))

## Read records from the Test Folder
test_1 <- read.table(paste(folder,"test/subject_test.txt", sep = ""))
test_x <- read.table(paste(folder,"test/X_test.txt", sep = ""))
test_y <- read.table(paste(folder,"test/y_test.txt", sep = ""))

## Fetch the name of the features (Columns) & names of Labels
features <- read.table(paste(folder,"features.txt", sep = ""))
alabels <- read.table(paste(folder,"activity_labels.txt", sep = ""))

## Convert Features column from Factor to Character
## Clean the names of features and save in new variable 'mrgd'
features$V2 <- as.character(features$V2)
mrgd <- features
mrgd$V2 <- gsub("-",".",mrgd$V2)
mrgd$V2 <- gsub("\\(\\)","",mrgd$V2)

## Find Positions of Columns with Mean or Standard Deviation only
meanstd_list <- grep(mrgd$V2, pattern = "(\\.mean\\.)|(\\.std\\.)", ignore.case = T)
## Add 2 to the position, since two new columns will bind to the LEFT
meanstd_list <- meanstd_list + 2;

## Merge Test & Train datasets together (Data, Subjects, Labels)
indata <- rbind(test_x,train_x)
subdata <- rbind(test_1,train_1)
labdata <- rbind(test_y,train_y)

## Assign Column names from Feature List
colnames(indata) <- mrgd$V2

## Bind Test Labels (labdata) & Subjects (subdata) to the LEFT 
final <- cbind(subdata$V1, indata)
final <- cbind(labdata$V1, final)

## Rename the new Column Names
colnames(final)[2] <- "Subject"
colnames(final)[1] <- "Label"

## Subset only Means & Standard Deviations, from list of positions 'meanstd_list'
clean_data <- final[,c(1,2,meanstd_list)]

## Merge Label Names dataframe with the data
## Match Label Number 'V1' (from list of labels) to Label code (from Cleaned Data)
finale <- merge(alabels,clean_data, by.y = "Label", by.x="V1")
## Rename Column names V1, V2 to more descriptive names
finale <- rename(finale, LabelName = V2, LabelCode = V1)

tidy <- aggregate(finale, by=list(Activity = finale$LabelName, Subject=finale$Subject), mean)
# Clean again
clean_tidy <- tidy[,-c(3,4,5)]

# Output to file, without row names.
write.table(clean_tidy, file = "./SportDataset.txt",row.name=FALSE)
