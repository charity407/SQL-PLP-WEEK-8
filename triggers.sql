-- Trigger to automatically change appointment status on update
CREATE TRIGGER trg_update_appointment_status
AFTER UPDATE ON appointments
FOR EACH ROW
BEGIN
    IF NEW.status IS NULL THEN
        SET NEW.status = 'Pending';
    END IF;
END;

-- Trigger to log changes to appointments
CREATE TABLE appointment_audit_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    old_status VARCHAR(50),
    new_status VARCHAR(50),
    changed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    changed_by VARCHAR(100)
);

CREATE TRIGGER trg_appointment_audit
AFTER UPDATE ON appointments
FOR EACH ROW
BEGIN
    INSERT INTO appointment_audit_log (appointment_id, old_status, new_status, changed_by)
    VALUES (OLD.appointment_id, OLD.status, NEW.status, USER());
END;
