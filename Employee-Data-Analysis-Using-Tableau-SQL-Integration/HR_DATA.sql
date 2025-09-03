CREATE DATABASE HR_DATA
USE HR_DATA

SELECT 
Registration_Data.Employee_Number , Registration_Data.Age, Registration_Data.CF_age_band, Registration_Data.Department,
Registration_Data.Education, Registration_Data.Education_Field,
Registration_Data.Employee_Count, Registration_Data.Gender, Registration_Data.Job_Role,
Registration_Data.Marital_Status, HR.Attrition, HR.CF_attrition_label, HR.Monthly_Income, HR.Performance_Rating, 
HR.Years_Since_Last_Promotion, HR.Years_With_Curr_Manager, Feedback.Environment_Satisfaction, 
Feedback.Job_Involvement, Feedback.Job_Satisfaction, Feedback.Relationship_Satisfaction, Feedback.Work_Life_Balance,
Accounts.Monthly_Rate, Accounts.Total_Working_Years, Accounts.Years_At_Company, Accounts.Years_In_Current_Role
INTO 
Joined_Data
FROM
Registration_Data
RIGHT JOIN
HR ON Registration_Data.Employee_Number=HR.Employee_Number
RIGHT JOIN
Feedback ON Registration_Data.Employee_Number = Feedback.Employee_Number
RIGHT JOIN 
Accounts ON Registration_Data.Employee_Number = Accounts.Employee_Number;

select * from Joined_Data