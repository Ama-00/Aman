# Code Book for Tidy Dataset

## 1. Dataset Description:
The dataset was collected from accelerometers on the Samsung Galaxy S smartphone. This project merges, cleans, and extracts meaningful measurements from the original dataset to create a tidy dataset.

## 2. Variables:
- **subject**: The ID of the subject (person) who performed the activity.
- **activity**: The type of activity performed by the subject (e.g., WALKING, SITTING).
- **Other variables**: 
  - These are the mean and standard deviation measurements from the accelerometer and gyroscope. They are selected based on the following features:
    - `tBodyAcc-mean()-X`
    - `tBodyAcc-mean()-Y`
    - `tBodyAcc-mean()-Z`
    - `tBodyAcc-std()-X`
    - `tBodyAcc-std()-Y`
    - `tBodyAcc-std()-Z`
    - (and other similar variables for gyroscope data, time and frequency domains)

## 3. Data Transformations:
- The original dataset was split into training and test sets. These were merged to form a single dataset.
- From the merged dataset, only the columns that represent the mean and standard deviation measurements were extracted.
- Descriptive activity names (like WALKING, SITTING) replaced numeric activity labels.
- The dataset was grouped by subject and activity, and the mean for each measurement was calculated.

## 4. Units:
- **Time domain signals (prefix t)** are measured in seconds.
- **Frequency domain signals (prefix f)** are measured in Hertz.
- **Accelerometer readings** are in units of gravitational acceleration (g).
- **Gyroscope readings** are in radians per second (rad/s).
