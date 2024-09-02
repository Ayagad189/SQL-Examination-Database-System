# SQL-Examination-Database-System
SQL Examination Database System

Overview

Welcome to the SQL Examination Database System! 

This project is designed to manage and optimize examination processes in educational institutions. 

It provides a comprehensive database structure that includes tables for students, courses, exams, instructors, and more. The system also incorporates various stored procedures, functions, triggers, and role-based security to ensure efficient and secure data management.

Features


Non-Clustered Indexes: Optimized query performance across various tables to handle complex queries efficiently.


Stored Procedures: Automates repetitive database operations for better efficiency and maintainability.


User-Defined Functions: Encapsulates complex logic to reuse code effectively.


Views: Simplifies data retrieval by aggregating and presenting data in a user-friendly format.


Triggers: Enforces data integrity and automates actions within the database.


Role-Based Security: 

Ensures users have appropriate access levels based on their roles (Admin, Training Manager, Instructor, Student).



Roles and Permissions


This database system uses a role-based security model. Below are the roles and their permissions:

AdminRole: Full control over the database.


TrainingManagerRole: Manage training-related data (students, branches, departments, etc.).


InstructorRole: Manage exams and view course information.


StudentRole: View exam results and course information.

Database Schema


The database consists of several tables, including:

Students: Stores student information.


Courses: Contains course details.


Exams: Stores exam information and schedules.


Instructors: Contains instructor details and assignments.
