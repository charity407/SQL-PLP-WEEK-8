    CREATE VIEW TodaysBookings AS
    SELECT 
        p.patient_id,
        p.first_name AS patient_first_name,
        p.last_name AS patient_last_name,
        d.doctor_id,
        d.first_name AS doctor_first_name,
        d.last_name AS doctor_last_name,
        a.appointment_id,
        a.appointment_date,
        a.appointment_time,
        a.status
    FROM 
        patients p
    JOIN 
        appointments a ON p.patient_id = a.patient_id
    JOIN 
        doctors d ON a.doctor_id = d.doctor_id
    WHERE 
        a.appointment_date = CAST(GETDATE() AS DATE);