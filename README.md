# dental_appointments_analysis-
Cleaning and analyzing a synthetic dental dataset using Google Sheets and SQL 


Notice: This project uses a synthetic dataset for portfolio purposes only. The dataset contains no real patient information and health records.

Tools Used:  
- Google Sheets
- SQL
- GitHub


Step 1: Data Cleaning
The raw dataset contained missing values and inconsistent category names. I identified missing appointment type and wait times. I addressed missing appointment type by deleting the row, since we cannot assume an appointment. Missing wait time was addressed by finding the average wait time of each appointment. In addition, inconsistent category names was fixed by using the UNIQUE function in Sheets in order to see the different types of insurances. Then, UPPER, LOWER, and PROPER functions were used to correct the categories. 


Step 2: Data Analysis
I investigated cancellation rate for each appointment type, insurance type, and provider through SQL queries. I also calculate the no-show rate using the total amount of appointments. 

Step 3: Key Findings
The appointment type with the highest cancellations is cleanings. 
Patients with PPO insurance have the highest amount of cancellations. 
Provider C had the highest average wait times. 
Provider B had the highest amount of cancellations. 
