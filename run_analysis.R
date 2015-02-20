require(dplyr)
folder <- "./"

train_1 <- read.table(paste(folder,"train/subject_train.txt", sep = ""))
train_x <- read.table(paste(folder,"train/X_train.txt", sep = ""))
train_y <- read.table(paste(folder,"train/y_train.txt", sep = ""))

test_1 <- read.table(paste(folder,"test/subject_test.txt", sep = ""))
test_x <- read.table(paste(folder,"test/X_test.txt", sep = ""))
test_y <- read.table(paste(folder,"test/y_test.txt", sep = ""))

features <- read.table(paste(folder,"features.txt", sep = ""))
alabels <- read.table(paste(folder,"activity_labels.txt", sep = ""))

features$V2 <- as.character(features$V2)
mrgd <- features
mrgd$V2 <- gsub("-",".",mrgd$V2)
mrgd$V2 <- gsub("\\(\\)","",mrgd$V2)

## Find Columns with Mean or StD only
meanstd_list <- grep(mrgd$V2, pattern = "(\\.mean\\.)|(\\.std\\.)", ignore.case = T)
meanstd_list <- meanstd_list + 2;

## Merge Test & Train datasets (Data, Subjects, Labels)
indata <- rbind(test_x,train_x)
subdata <- rbind(test_1,train_1)
labdata <- rbind(test_y,train_y)

## Assign Column names from Feature List
colnames(indata) <- mrgd$V2

## Bind Test Labels (labdata) & Subjects (subdata)  
final <- cbind(subdata$V1, indata)
final <- cbind(labdata$V1, final)

## Rename the new Column Names
colnames(final)[2] <- "Subject"
colnames(final)[1] <- "Label"

## Subset only Means & Standard Deviations
clean_data <- final[,c(1,2,meanstd_list)]

## Merge Label Names
finale <- merge(alabels,clean_data, by.y = "Label", by.x="V1")
finale <- rename(finale, LabelName = V2, LabelCode = V1)

# Output to file
write.table(finale, file = "./SportDataset.txt",row.name=FALSE)
