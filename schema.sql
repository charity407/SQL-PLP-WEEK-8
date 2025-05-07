-- -- 
-- * ✅ Patient registration and management
-- * ✅ Doctor profile management
-- * ✅ Appointment booking and scheduling
-- * ✅ Tracking appointment status (booked, completed, cancelled)
-- * ✅ Viewing and filtering doctor availability
-- * ✅ Recording patient visits and treatment notes

-- clinical-booking-system/
-- │
-- ├── schema.sql            # Core database schema (tables, relationships, constraints)
-- ├── sample_data.sql       # Sample data for patients, doctors, and appointments
-- ├── views.sql             # Useful SQL views for reporting and querying
-- ├── procedures.sql        # Stored procedures for booking logic
-- -- ├── triggers.sql          # Triggers for auditing and automation

CREATE DATABASE clinical_booking_system;
USE clinical_booking_system;

-- Table for storing patient information
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,

    -- table for storing doctors information
    CREATE TABLE doctors (
        doctor_id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        specialty VARCHAR(50) NOT NULL,
        phone_number VARCHAR(15),
        email VARCHAR(100)
    );

    CREATE TABLE appointments (
        appointment_id INT AUTO_INCREMENT PRIMARY KEY,
        patient_id INT NOT NULL,
        doctor_id INT NOT NULL,
        appointment_date DATE NOT NULL,
        appointment_time TIME NOT NULL,
        status ENUM('booked', 'completed', 'cancelled') DEFAULT 'booked',
        FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
        FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
    );
