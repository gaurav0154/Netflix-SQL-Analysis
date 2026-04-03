# 🎬 Netflix Data Analysis (PostgreSQL Project)

## 📌 Project Overview

This project focuses on analyzing Netflix's dataset using **PostgreSQL** to extract meaningful insights about content distribution, trends, and patterns. It demonstrates strong SQL fundamentals including data cleaning, aggregation, window functions, and real-world problem solving.

The dataset includes both **Movies** and **TV Shows** with details such as title, director, cast, country, release year, rating, duration, and genre.

---

## 🎯 Objectives

* Analyze content distribution between Movies and TV Shows
* Identify trends in ratings, genres, and countries
* Perform advanced SQL operations like CTEs, window functions, and string manipulation
* Solve real-world business questions using SQL

---

## 🛠️ Tools & Technologies

* PostgreSQL
* SQL (Advanced Queries)
* Git & GitHub

---

## 🗂️ Dataset Description

The dataset contains the following columns:

* `show_id` → Unique ID for each title
* `type` → Movie or TV Show
* `title` → Name of the content
* `director` → Director name(s)
* `cast` → Actors involved
* `country` → Country of production
* `date_added` → Date added to Netflix
* `release_year` → Release year
* `rating` → Age rating
* `duration` → Duration (minutes or seasons)
* `listed_in` → Genre/category
* `description` → Brief summary

---

## 🔍 Key Business Questions Solved

### 1. Content Distribution

* Count of Movies vs TV Shows

### 2. Most Common Ratings

* Identified the most frequent rating per content type using **window functions**

### 3. Year-Based Filtering

* Retrieved movies released in a specific year

### 4. Top Producing Countries

* Extracted top 5 countries contributing most content

### 5. Longest Movie

* Identified movie with maximum duration

### 6. Recent Content Analysis

* Filtered content added in the last 5 years

### 7. Director-Based Filtering

* Retrieved all content by a specific director

### 8. TV Shows with Multiple Seasons

* Found shows with more than 5 seasons

### 9. Genre Analysis

* Counted number of content items per genre

### 10. India Content Trend

* Calculated yearly percentage contribution of Indian content

### 11. Documentary Movies

* Filtered movies belonging to documentary genre

### 12. Missing Data Handling

* Identified content with no director information

### 13. Actor-Based Analysis

* Counted movies featuring a specific actor in last 10 years

### 14. Top Actors in Indian Content

* Identified top 10 most frequent actors in Indian productions

### 15. Content Categorization (NLP Logic)

* Classified content as:

  * **Bad** → Contains keywords like 'kill' or 'violence'
  * **Good** → All other content

---

## ⚡ Key SQL Concepts Used

* Aggregations (`COUNT`, `GROUP BY`)
* Window Functions (`RANK()`)
* Common Table Expressions (CTEs)
* String Functions (`STRING_TO_ARRAY`, `SPLIT_PART`)
* Data Cleaning & Transformation
* Conditional Logic (`CASE WHEN`)
* Date Functions
* Subqueries

---

## 💡 Highlights

* Real-world dataset simulation
* Strong use of PostgreSQL-specific functions
* Clean and optimized queries
* Business-focused problem solving approach

---

## 📊 Sample Insights

* Movies dominate slightly over TV Shows
* TV Shows tend to have higher maturity ratings (TV-MA)
* United States and India are major contributors
* Drama and International genres are highly common

---

## 🚀 How to Run This Project

1. Install PostgreSQL
2. Create a database
3. Import dataset into a table named `netflix`
4. Run the provided SQL queries

---

## 📁 Project Structure

```
📦 netflix-sql-project
 ┣ 📜 netflix_dataset.csv
 ┣ 📜 queries.sql
 ┗ 📜 README.md
```

---

## 🧠 What I Learned

* Writing efficient SQL queries for analytics
* Handling messy real-world data
* Extracting insights using SQL only
* Structuring queries for readability and performance

---

## 📬 Contact

If you liked this project or want to collaborate:

* LinkedIn: (https://www.linkedin.com/in/gaurav-joshi-335165217)
* GitHub: (https://github.com/gaurav0154/Netflix-SQL-Analysis)

---

## ⭐ If You Found This Useful

Give this repository a ⭐ to support and stay connected!

---

🔥 *This project showcases strong SQL skills and is designed to impress recruiters looking for data analysts and SQL developers.*
