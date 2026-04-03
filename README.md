# Netflix Data Analysis using SQL

## Project Overview

This project involves a comprehensive analysis of Netflix's movies and TV shows data using PostgreSQL. The goal is to extract actionable insights and solve 15 business problems to understand Netflix's content strategy, regional dominance, and audience preferences.

## Tech Stack

Database: PostgreSQL

Tool: pgAdmin 4 / SQL Shell

Skillset: Data Cleaning, CTEs, Window Functions, String Manipulation

## Dataset Schema

Show ID: Unique identifier for every movie/show.
Type: Identifier - Movie or TV Show.
Title: Title of the movie/show.
Director: Director of the movie/show.
Cast: Actors involved in the movie/show.
Country: Country where the movie/show was produced.
Date Added: Date when it was added to Netflix.
Release Year: Actual release year of the movie/show.
Rating: TV Rating of the movie/show.
Duration: Total duration of the movie/show.
Listed In: Genre of the movie/show.
Description: Summary of the content.

## Business Problems Solved

1. Content Distribution
Analyzed the count of Movies vs TV Shows to understand Netflix's focus.

2. Regional Analysis
Identified the Top 5 Countries with the highest content production, specifically focusing on India's growth.

3. Content Categorization
Classified content as 'Bad' or 'Good' based on keywords like 'violence' and 'kill' in the descriptions for Safety Analysis.

4. Advanced Filtering
Found the Longest Movie based on duration.

Identified Top 10 Actors from India with the most appearances.

Tracked content added in the Last 5 Years.

## Key Insights & Recommendations

Invest in Local Talent: Based on the high volume of content from India, Netflix should continue collaborating with Local Creators.
Genre Expansion: Focus on the most frequent Ratings (like TV-MA) to match audience demand.
Retention Strategy: Promoting TV Shows with more than 5 Seasons helps in reducing subscriber churn.
