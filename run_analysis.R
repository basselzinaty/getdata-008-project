# Read test and training data for (X, Y, and subjects), then combine files respectively

x_train <- read.table("./train/X_train.txt")
x_test <- read.table("./test/X_test.txt")
X <- rbind(x_train, x_test)
rm(x_train, x_test) #cleanup
 
y_train  <- read.table("./train/y_train.txt")
y_test <- read.table("./test/y_test.txt")
Y <- rbind(y_train, y_test)
rm(y_train, y_test) #cleanup

subj_train <- read.table("./train/subject_train.txt")
subj_test <- read.table("./test/subject_test.txt")
subject <- rbind(subj_train, subj_test)
rm(subj_train, subj_test) #cleanup

# Read activities data and label Y dataset
activities <- read.table("./activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2]))) #looks nicer
Y [,1] = activities[Y[,1], 2]
names(Y) <- "activity"

# Read features file
features <- read.table("./features.txt")

#keep mean & st deviation measurements.
MS_feat <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X_MS <- X[,MS_feat]
names(X_MS)<-tolower(gsub("\\(|\\)", "", features[MS_feat, 2])) #looks nicer

# Add labels to subjects dataset
names(subject) <- "subject"

# merge datasets & output the table 
data_final <- cbind(subject, Y, X_MS)
write.table(data_final, "data_final.txt")


# creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#assumes reshape2 library already installed
library(reshape2)
melted <- melt(data_final, id=c("subject","activity"))
data_averages<- dcast(melted, formula = subject + activity ~ variable, mean)
write.table(data_averages, "data_averages.txt", row.name=FALSE)