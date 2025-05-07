---

#  Clinical Booking System – SQL Project

##  Project Overview

The **Clinical Booking System** is a structured SQL-based backend database designed to manage clinical appointments efficiently. It provides essential functionalities to streamline patient management, doctor scheduling, and appointment booking. This project is ideal for hospitals, clinics, or any healthcare facility seeking a lightweight database-driven scheduling solution.

###  Key Features

*  Manage appointments between patients and doctors
*  Doctor records management (name, specialty, availability)
*  Patient records management (contact info, history)
*  Booking logic that prevents double bookings
*  Support for basic queries (available slots, upcoming appointments, history, etc.)
*  Enforces data integrity through primary and foreign keys

---

##  Technologies Used

* SQL (PostgreSQL / MySQL / SQL Server – choose your DBMS)
* SQL Scripts: DDL (Create Tables), DML (Insert sample data), Queries & Procedures

---

##  Project Structure

```
clinical-booking-system/
│
├── create_tables.sql         # Defines schema (tables, primary keys, constraints)
├── insert_sample_data.sql    # Populates DB with sample doctors, patients, appointments
├── stored_procedures.sql     # Optional: functions/procedures for business logic
├── views_and_queries.sql     # Useful views and queries (next appointments, availability, etc.)
├── README.md                 # This file
```

---

##  How to Setup and Run the Project

>  Ensure your SQL environment is ready (e.g., MySQL Workbench, PostgreSQL pgAdmin, or SSMS for SQL Server)

###  Step 1: Create the Database

```sql
CREATE DATABASE clinical_booking;
USE clinical_booking; -- For MySQL
-- OR
\c clinical_booking; -- For PostgreSQL
```

###  Step 2: Import Schema and Sample Data

Run the scripts in this order:

1. **Create the schema:**

   ```sql
   SOURCE create_tables.sql; -- MySQL
   -- OR
   \i create_tables.sql       -- PostgreSQL
   ```

2. **Insert sample data:**

   ```sql
   SOURCE insert_sample_data.sql; 
   ```

3. **Optional: Add stored procedures or views**

   ```sql
   SOURCE stored_procedures.sql;
   SOURCE views_and_queries.sql;
   ```

###  Step 3: Test the System

Try running queries like:

```sql
-- See all doctors
SELECT * FROM doctors;

-- See available appointment slots
SELECT * FROM available_slots;

-- Book a new appointment (if using a stored procedure)
CALL book_appointment(patient_id, doctor_id, '2025-05-10 10:00:00');
```

---

##  Sample Use Cases

* View all upcoming appointments for a doctor
* Get a patient’s full visit history
* List all available slots for a given date
* Prevent double-booking using triggers or logic

---

##  Security & Integrity

* Foreign key constraints enforce correct linkages (e.g., appointments must reference existing doctors/patients)
* Unique constraints to prevent overlapping appointment slots
* Optional: Add triggers to auto-log changes or prevent overbooking

---

##  Contributions

Feel free to fork, improve, or extend the system. You can add:

* A front-end interface (e.g., Python, PHP, React)
* Advanced scheduling logic (waiting list, cancellations)
* Reporting dashboards

---

## ERD DIAGRAM

![clinical_booking_system_erd](https://github.com/user-attachments/assets/44212998-6d17-40de-a745-4d26cd4c23e2)



   



