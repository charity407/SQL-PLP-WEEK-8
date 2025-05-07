-- appoinment booking and scheduling

CREATE PROCEDURE BookAppointment(
    IN patient_id INT,
    IN doctor_id INT,
    IN appointment_date DATE,
    IN appointment_time TIME
)
BEGIN
    -- Check if the doctor is available at the given date and time
    IF NOT EXISTS (
        SELECT 1
        FROM Appointments
        WHERE doctor_id = doctor_id
          AND appointment_date = appointment_date
          AND appointment_time = appointment_time
    ) THEN
        -- Insert the appointment into the Appointments table
        INSERT INTO Appointments (patient_id, doctor_id, appointment_date, appointment_time)
        VALUES (patient_id, doctor_id, appointment_date, appointment_time);
        
        SELECT 'Appointment booked successfully' AS message;
    ELSE
        SELECT 'The doctor is not available at the selected time' AS message;
    END IF;
END;


-- * ✅ Tracking appointment status (booked, completed, cancelled) procedure
CREATE PROCEDURE UpdateAppointmentStatus(
    IN appointment_id INT,
    IN new_status ENUM('booked', 'completed', 'cancelled')
)
BEGIN
    -- Update the appointment status in the Appointments table
    UPDATE Appointments
    SET status = new_status
    WHERE appointment_id = appointment_id;
    
    SELECT 'Appointment status updated successfully' AS message;
END;


-- * ✅ Viewing and filtering doctor availability procedure
CREATE PROCEDURE GetDoctorAvailability(
    IN doctor_id INT,
    IN appointment_date DATE
)
BEGIN
    -- Get the available time slots for the doctor on the specified date
    SELECT appointment_time
    FROM Appointments
    WHERE doctor_id = doctor_id
      AND appointment_date = appointment_date
      AND status = 'booked';
END;

-- -- * ✅ Recording patient visits and treatment notes procedure
CREATE PROCEDURE RecordPatientVisit(
    IN appointment_id INT,
    IN treatment_notes TEXT
)
BEGIN
    -- Update the appointment with treatment notes
    UPDATE Appointments
    SET treatment_notes = treatment_notes
    WHERE appointment_id = appointment_id;
    
    SELECT 'Patient visit recorded successfully' AS message;
END;


-- * ✅ Doctor profile management procedure
CREATE PROCEDURE UpdateDoctorProfile(
    IN doctor_id INT,
    IN first_name VARCHAR(50),
    IN last_name VARCHAR(50),
    IN specialty VARCHAR(50),
    IN phone_number VARCHAR(15),
    IN email VARCHAR(100)
)
BEGIN
    -- Update the doctor's profile in the Doctors table
    UPDATE Doctors
    SET first_name = first_name,
        last_name = last_name,
        specialty = specialty,
        phone_number = phone_number,
        email = email
    WHERE doctor_id = doctor_id;
    
    SELECT 'Doctor profile updated successfully' AS message;
END;

-- * ✅ Patient registration and management procedure
CREATE PROCEDURE RegisterPatient(
    IN first_name VARCHAR(50),
    IN last_name VARCHAR(50),
    IN date_of_birth DATE
)
BEGIN
    -- Insert the new patient into the Patients table
    INSERT INTO Patients (first_name, last_name, date_of_birth)
    VALUES (first_name, last_name, date_of_birth);
    
    SELECT 'Patient registered successfully' AS message;
END;
