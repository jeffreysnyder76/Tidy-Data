Project Overview
This project aims to demonstrate the ability to collect, work with, and clean a dataset, specifically using the Human Activity Recognition Using Smartphones dataset. The dataset consists of accelerometer data collected from Samsung Galaxy S smartphones. The goal is to prepare a tidy dataset that can be used for later analysis.

Project Requirements
You are required to:

Merge the training and test datasets to create one combined dataset.

Extract measurements related to the mean and standard deviation of the measurements.

Use descriptive activity names to name the activities in the dataset.

Appropriately label the dataset with descriptive variable names.

Create a second tidy dataset that contains the average of each variable for each activity and each subject.

Getting Started
To get started, you need to:

Download the dataset:

The dataset can be downloaded from this link.

Run the Analysis:

Clone or download the repository, and execute the run_analysis.R script to generate the tidy dataset.

Scripts
The analysis is performed in the run_analysis.R script, which carries out the following steps:

Merges the training and test datasets.

Extracts the mean and standard deviation columns.

Replaces activity labels with descriptive names.

Appropriately labels the dataset with descriptive variable names.

Creates a second tidy dataset containing averages for each subject and activity.

Files in the Repository
run_analysis.R: R script that processes the dataset.

tidy_data.txt: The final tidy dataset that contains the average of each variable for each activity and subject.

CodeBook.md: Describes the variables, transformations, and analysis steps used in the project.

README.md: This file that explains the project, its purpose, and how to execute the analysis.

Running the Analysis
Clone or download the repository.

Install necessary R packages (if not already installed):

r
Copy
Edit
install.packages("dplyr")
Run the run_analysis.R script:

r
Copy
Edit
source("run_analysis.R")
The output will be saved as tidy_data.txt, which you can open in any text editor or analyze further in R.

License
This project is for educational purposes and follows the guidelines of the Data Science Specialization on Coursera.
