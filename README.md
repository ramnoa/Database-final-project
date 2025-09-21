# 📚 Library Management System Database

This repository contains the SQL schema for a **Library Management System** implemented in MySQL.  
It includes tables, relationships, and constraints to manage readers, staff, books, publishers, and reports.

---

## 🚀 Features
- Store and manage **Readers** (users of the library).  
- Manage **Staff** information.  
- Record **Books** with ISBN as a unique identifier.  
- Maintain **Publishers** linked to books.  
- Track **Reports** of book transactions (which reader borrowed/returned a book, and which staff processed it).  
- Enforced **Primary Keys** and **Foreign Keys** for strong data integrity.  

---

## 🗄️ Database Schema

The database consists of the following tables:

### 1. Reader
Stores information about library users.  
- **Primary Key:** `user_id`

### 2. Staff
Stores library staff members’ details.  
- **Primary Key:** `staff_id`

### 3. Books
Stores book information.  
- **Primary Key:** `ISBN`

### 4. Publisher
Stores publisher details and links to books.  
- **Primary Key:** `Publisher_id`  
- **Foreign Key:** `ISBN → Books(ISBN)`

### 5. Reports
Tracks reports of borrowed/returned books.  
- **Primary Key:** `Reg_Number`  
- **Foreign Keys:**  
  - `ISBN → Books(ISBN)`  
  - `user_id → Reader(user_id)`  
  - `staff_id → Staff(staff_id)`  

---

## 🔑 Relationships
- **Reader → Reports**: One reader can be linked to many reports.  
- **Books → Reports**: One book can appear in many reports.  
- **Books → Publisher**: One book is linked to a publisher.  
- **Staff → Reports**: One staff member can process many reports.  

---

## 🛠️ Setup Instructions

1. Clone the repository:  
   ```bash
   git clone https://github.com/ramnoa/Database-final-project.git
   cd Database-final-project
SOURCE Library_management_system.sql;
## ER Diagram

Here is the ER diagram for the Library Management System:

![EER Diagram](./EER%20DIAGRAM.png)
👨‍💻 Author

Developed by Noah Ewalan Logong 