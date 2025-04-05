# Tidy-Data

# Download and unzip the dataset
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "UCI_HAR_Dataset.zip")
unzip("UCI_HAR_Dataset.zip")

# Load the training and test data
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")

# Load the activity labels
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")

# Load the subject identifiers
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Combine the training and test sets
data_combined <- rbind(train_data, test_data)

# Combine the activity labels and subject identifiers
activity_combined <- rbind(train_activity, test_activity)
subject_combined <- rbind(train_subject, test_subject)

# Load the feature names
features <- read.table("UCI HAR Dataset/features.txt")

# Extract the column indices for mean and standard deviation
mean_std_features <- grep("mean\\(\\)|std\\(\\)", features$V2)

# Subset the data to include only the mean and standard deviation features
data_mean_std <- data_combined[, mean_std_features]

# Load the activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Replace activity labels with descriptive names
activity_combined$V1 <- factor(activity_combined$V1, levels = activity_labels$V1, labels = activity_labels$V2)

# Assign descriptive column names
colnames(data_mean_std) <- features$V2[mean_std_features]

# Combine subject, activity, and data into a single data frame
tidy_data <- cbind(subject_combined, activity_combined, data_mean_std)

# Set appropriate column names
colnames(tidy_data)[1:2] <- c("Subject", "Activity")

# Create the tidy data set by calculating the mean for each subject and activity
library(dplyr)
tidy_data_summary <- tidy_data %>%
  group_by(Subject, Activity) %>%
  summarise_all(funs(mean))

  # Save the tidy data set
write.table(tidy_data_summary, "tidy_data.txt", row.names = FALSE)

