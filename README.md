# 📚 Library Management System

## 📖 Project Description

This Library Management System is a relational database built using **MySQL** to help manage the day-to-day operations of a library. It tracks books, authors, library members, staff, and book borrowing activities. The system implements various relationships like one-to-many and many-to-many, ensuring efficient data handling and referential integrity.

### Key Features

- Manage book inventory and author relationships.
- Track borrow and return transactions by members.
- Assign staff to handle borrowing operations.
- Enforce constraints like primary keys, foreign keys, unique fields, and not-null requirements.

## 🛠️ How to Set Up and Run the Project

### Requirements

- MySQL Server (any recent version)
- MySQL Workbench or any SQL client

### Steps

1. **Download the SQL File**  
   You can use the `.sql` file provided (`library_db.sql`) to set up the database.

2. **Create and Use the Database**  
   Open your SQL client and run:
   ```sql
   CREATE DATABASE library_db;
   USE library_db;
