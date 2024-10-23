# README for Human Activity Recognition Tidy Dataset Project

## 1. Project Overview
This project processes data collected from the accelerometers and gyroscopes on a Samsung Galaxy S smartphone. The goal is to prepare a tidy dataset that is easy to work with for further analysis. 

## 2. How to Run the Analysis
The analysis is performed using a single R script called `run_analysis.R`. To run the script:
1. Download and unzip the dataset from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Place the unzipped dataset folder in your working directory.
3. Run the `run_analysis.R` script. It will:
   - Merge the training and test datasets.
   - Extract the mean and standard deviation for each measurement.
   - Use descriptive activity names for labeling the data.
   - Appropriately label the dataset with descriptive variable names.
   - Create a tidy dataset containing the average of each variable for each activity and each subject.

4. The output of the script is a file called `tidy_data.txt`, which contains the cleaned and summarized data.

## 3. Files in the Repository
- `run_analysis.R`: The R script that performs the data cleaning and tidying steps.
- `tidy_data.txt`: The resulting tidy dataset containing the average of each variable for each activity and each subject.
- `CodeBook.md`: Describes the variables, units, and transformations performed on the dataset.
- `README.md`: Explains the purpose of the project and how to run the analysis.

## 4. About the Dataset
The dataset is based on experiments carried out with 30 volunteers performing various activities (e.g., walking, sitting) while wearing a smartphone on their waist. The data was collected using embedded accelerometers and gyroscopes. A more detailed description of the dataset can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
