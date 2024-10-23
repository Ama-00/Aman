library(dplyr)
# Read training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

# Read test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
# Combine data
subject_data <- rbind(subject_train, subject_test)
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
features <- read.table("UCI HAR Dataset/features.txt")
mean_std_indices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
x_data <- x_data[, mean_std_indices]
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
y_data[, 1] <- activity_labels[y_data[, 1], 2]
names(subject_data) <- "subject"
names(y_data) <- "activity"
names(x_data) <- features[mean_std_indices, 2]
final_data <- cbind(subject_data, y_data, x_data)
tidy_data <- final_data %>%
  group_by(subject, activity) %>%
  summarize_all(funs(mean))

# Write tidy dataset to a text file
write.table(tidy_data, "tidy_data.txt", row.name = FALSE)

