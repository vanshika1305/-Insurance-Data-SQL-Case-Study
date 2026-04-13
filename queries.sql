-- Insurance Data SQL Case Study
-- Author: Your Name

USE dmlpractice;

-- 1. Male patients from southwest region
SELECT * 
FROM insurance_data
WHERE gender = 'male' 
AND region = 'southwest';

-- 2. BMI between 30 and 45
SELECT * 
FROM insurance_data 
WHERE bmi BETWEEN 30 AND 45;

-- 3. Min & Max blood pressure of diabetic smokers
SELECT MIN(bloodpressure) AS MinBP,
       MAX(bloodpressure) AS MaxBP
FROM insurance_data 
WHERE diabetic = 'Yes' 
AND smoker = 'Yes';

-- 4. Unique patients not from southwest
SELECT COUNT(DISTINCT PatientID) AS UniquePatients
FROM insurance_data
WHERE region <> 'southwest';

-- 5. Total claim amount from male smokers
SELECT SUM(claim) AS TotalClaim
FROM insurance_data
WHERE smoker = 'Yes' 
AND gender = 'male';

-- 6. Records from south region
SELECT * 
FROM insurance_data 
WHERE region LIKE 'south%';

-- 7. Patients with normal BP (90–120)
SELECT COUNT(PatientID) AS NormalBPCount
FROM insurance_data
WHERE bloodpressure BETWEEN 90 AND 120;

-- 8. Patients below 17 with normal BP (formula based)
SELECT COUNT(PatientID) AS NormalBP_Under17
FROM insurance_data
WHERE age < 17 
AND bloodpressure BETWEEN 80 + (age * 2) 
                      AND 100 + (age * 2);

-- 9. Avg claim of non-smoking diabetic females
SELECT AVG(claim) AS AvgClaim
FROM insurance_data
WHERE gender = 'female' 
AND diabetic = 'Yes'
AND smoker = 'No';

-- 10. Update claim amount for PatientID 1234
UPDATE insurance_data
SET claim = 5000
WHERE PatientID = 1234;

-- 11. Delete smokers with no children
DELETE FROM insurance_data
WHERE smoker = 'Yes' 
AND children = 0;
