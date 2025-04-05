Codebook for Human Activity Recognition Dataset
This codebook describes the variables, data transformations, and the steps taken to clean the data for the Human Activity Recognition Using Smartphones project. The dataset comes from accelerometer readings of the Samsung Galaxy S smartphone. The goal of the analysis is to create a tidy dataset suitable for later analysis.

Data Overview
The data is divided into train and test sets. Both contain readings for 561 variables, corresponding to different accelerometer measurements. Additionally, each record is associated with an activity label and a subject identifier.

Variables
1. Subject
Type: Integer

Description: An identifier for the individual subject performing the activity (range 1-30).

2. Activity
Type: Factor

Description: The type of activity performed by the subject. This is represented by a descriptive name (e.g., WALKING, RUNNING, etc.). The activities are labeled as:

WALKING

WALKING_UPSTAIRS

WALKING_DOWNSTAIRS

SITTING

STANDING

LAYING

3. Feature Columns
Type: Numeric

Description: These columns represent the accelerometer measurements for each sensor. The columns are derived from the original dataset and correspond to the mean and standard deviation of the measurements. They are named after the original feature names, but only those that are related to mean (mean()) and standard deviation (std()) are included in the tidy dataset.

The feature names include, but are not limited to:

tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z

tGravityAcc-std()-X

tGravityAcc-std()-Y

Data Transformation
Merging Training and Test Sets: The training and test data were combined to create one large dataset.

Extracting Mean and Standard Deviation: Only the columns related to mean and standard deviation were selected.

Descriptive Activity Names: The activity labels were replaced with descriptive activity names.

Descriptive Variable Names: Column names were cleaned up to make them more descriptive and readable.

Tidy Dataset Creation: A second dataset was created that includes the average of each variable for each activity and subject.

Final Tidy Dataset
The final tidy dataset contains 68 columns (1 for Subject, 1 for Activity, and 66 for the mean and standard deviation measurements) and 180 rows (30 subjects × 6 activities).
