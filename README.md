
---

# 🏥 Clinical Booking System – SQL Project

## 📌 Project Description

The **Clinical Booking System** is a SQL-based backend database solution designed to manage and streamline patient bookings, doctor schedules, and administrative operations in a healthcare facility.

The system facilitates:

* ✅ Patient registration and management
* ✅ Doctor profile management
* ✅ Appointment booking and scheduling
* ✅ Tracking appointment status (booked, completed, cancelled)
* ✅ Viewing and filtering doctor availability
* ✅ Recording patient visits and treatment notes

It is built using **MySQL** (compatible with PostgreSQL and other SQL RDBMS with minimal changes) and is optimized for integration with any frontend application (web, desktop, or mobile) or API layer.

---

## 📂 Project Structure

```
clinical-booking-system/
│
├── schema.sql            # Core database schema (tables, relationships, constraints)
├── sample_data.sql       # Sample data for patients, doctors, and appointments
├── views.sql             # Useful SQL views for reporting and querying
├── procedures.sql        # Stored procedures for booking logic
├── triggers.sql          # Triggers for auditing and automation
└── README.md             # This file
```

---

## ⚙️ Requirements

* MySQL Server (v8.0+) OR any compatible SQL DBMS
* MySQL Workbench, DBeaver, phpMyAdmin, or any preferred SQL client
* Basic knowledge of SQL

---

## 🚀 How to Set Up & Run the Project

### ✅ Option 1: Importing SQL Files

1. **Clone or Download the Repository**

   ```
   git clone https://github.com/your-username/clinical-booking-system.git
   cd clinical-booking-system
   ```

2. **Create a New Database**

   ```sql
   CREATE DATABASE clinic_db;
   USE clinic_db;
   ```

3. **Import SQL Files in Order**

   * **Step 1**: Run the schema

     ```sql
     SOURCE schema.sql;
     ```

   * **Step 2**: Load sample data

     ```sql
     SOURCE sample_data.sql;
     ```

   * **Step 3**: Create views

     ```sql
     SOURCE views.sql;
     ```

   * **Step 4**: Load stored procedures

     ```sql
     SOURCE procedures.sql;
     ```

   * **Step 5**: Add triggers

     ```sql
     SOURCE triggers.sql;
     ```

   You can run these using MySQL CLI or GUI tools like MySQL Workbench or DBeaver by opening and executing each file.

---

### ✅ Option 2: Using MySQL Workbench

1. Open **MySQL Workbench**
2. Connect to your MySQL instance
3. Create a new schema/database:

   ```sql
   CREATE DATABASE clinic_db;
   USE clinic_db;
   ```
4. Open each `.sql` file in order and execute (schema → data → views → procedures → triggers)

---

## 🧪 Testing

You can now test with:

* `SELECT * FROM patients;`
* `CALL book_appointment(patient_id, doctor_id, appointment_date);`
* `SELECT * FROM appointments WHERE status = 'booked';`

---

## 🛠️ Features in SQL

* ✅ Normalized schema with proper foreign keys and indexing
* ✅ Booking logic using stored procedures
* ✅ Trigger-based audit log (e.g., automatic timestamping or appointment cancellation alerts)
* ✅ Parameterized views for frontend integration
* ✅ Easy to scale or integrate into a full-stack system

---

## 📈 Example Use Cases

* Schedule a patient appointment
* Fetch available doctors by department and time
* Generate daily report of booked vs completed appointments

---

## ERD DIAGRAM
![clinical_booking_system_erd](https://github.com/user-attachments/assets/9a393657-1492-4a10-9744-a103463a14a3)






   



