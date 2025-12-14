🎓 Student Performance & Ranking System (SQL)
📌 Project Overview

This project is a Student Performance & Ranking System built using SQL Server.
The main purpose of this project is to store academic data in a structured way and analyze student performance using SQL queries.

The project focuses on clarity, correct database design, and meaningful analysis, rather than advanced or complex SQL features.

🎯 Objective

The objective of this project is to:

Design a normalized academic database

Analyze student performance across subjects and departments

Compare individual performance with group averages

Rank students fairly using window functions

This project is designed at a beginner–intermediate SQL level.

🧰 Tools & Technologies Used

Database: SQL Server

Query Tool: SQL Server Management Studio (SSMS)

Language: SQL

🗂 Database Structure
Tables Used

Students – stores student details like department, enrollment year, and gender

Subjects – stores subject information such as credits and exam type

Marks – stores marks obtained by students (bridge table)

Key Design Points

Proper primary keys and foreign keys

Marks table uses a composite primary key

Clean relational design suitable for analytical queries

An ER diagram is included in the docs/ folder.

📁 Project Folder Structure
Student-Performance-SQL/
│
├── database/
│   ├── schema.sql
│   └── sample_data.sql
│
├── queries/
│   ├── basic/
│   ├── joins/
│   ├── window_functions/
│   └── set_operators/
│
├── docs/
│   └── ER_Diagram.png
│
├── INSIGHTS.md
└── README.md

🔍 SQL Concepts Covered

This project demonstrates the following SQL concepts:

DDL & DML commands

Multi-table JOINs

Aggregate functions

Window functions (OVER, RANK, AVG)

SET operators (UNION, INTERSECT, EXCEPT)

Clean query organization and documentation

Advanced concepts like subqueries, CTEs, triggers, and procedures were intentionally avoided.

📊 Analysis Performed

Some of the key analyses included in this project:

Student-wise marks across subjects

Subject-wise and department-wise average scores

Ranking students within subjects and departments

Comparing individual performance with subject and department averages

Identifying exam participation using set operators

Detailed insights are documented in INSIGHTS.md.

▶️ How to Run This Project

Open SQL Server Management Studio (SSMS)

Create a new database

Run database/schema.sql to create tables

Run database/sample_data.sql to insert sample data

Execute queries from the queries/ folder based on analysis type

📈 Learning Outcomes

Through this project, I learned how to:

Design a relational database from scratch

Organize SQL projects in a clean and maintainable way

Write meaningful analytical queries

Use window functions for ranking and comparison

Present SQL work clearly on GitHub

🚀 Future Improvements (Optional)

Add GPA calculation

Include semester-wise performance

Visualize results using a dashboard tool

Convert to a full academic management system

🧠 Final Note

This project focuses on strong SQL fundamentals and real-world academic analysis.
It is intended to showcase clarity of thought, clean design, and analytical skills, rather than advanced SQL complexity.

📌 Author: Srikumar
📌 Level: Beginner–Intermediate SQL
📌 Database: SQL Server
