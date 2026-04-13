# 🩺 Insurance Data SQL Case Study

## 📌 Project Overview

This project demonstrates SQL skills by analyzing an insurance dataset.
It focuses on solving real-world data problems using filtering, aggregation, and data manipulation.

---

## 📂 Dataset Description

The dataset contains patient-related information such as:

* PatientID
* Age, Gender
* BMI, BloodPressure
* Smoker, Diabetic
* Region
* Claim Amount
* Number of Children

---

## 🎯 Objectives

* Perform data filtering using SQL conditions
* Apply aggregate functions (SUM, AVG, MIN, MAX)
* Analyze patient health metrics
* Practice UPDATE and DELETE operations

---

## 🧠 Sample SQL Queries

### 1. Male patients from southwest region

```sql
SELECT * 
FROM dmlpractice.insurance_data
WHERE gender = 'male' AND region = 'southwest';
```

### 2. BMI between 30 and 45

```sql
SELECT * 
FROM dmlpractice.insurance_data 
WHERE bmi BETWEEN 30 AND 45;
```

### 3. Min & Max Blood Pressure of diabetic smokers

```sql
SELECT MIN(bloodpressure) AS MinBP,
       MAX(bloodpressure) AS MaxBP
FROM dmlpractice.insurance_data 
WHERE diabetic = 'Yes' AND smoker = 'Yes';
```

### 4. Total claim amount from male smokers

```sql
SELECT SUM(claim) AS TotalClaim
FROM dmlpractice.insurance_data
WHERE smoker = 'Yes' AND gender = 'male';
```

---

👉 More queries available in **queries.sql**

---

## 📊 Key Learnings

* Writing clean and efficient SQL queries
* Using aggregate functions for analysis
* Understanding real-world dataset filtering
* Performing safe UPDATE and DELETE operations

---

## 🚀 Conclusion

This project highlights practical SQL skills required for data analyst roles.
It demonstrates the ability to extract insights and manipulate data using structured queries.
