-- This SQL script inserts sample data into the patients and doctors tables.
-- insert into patients table
INSERT INTO patients (first_name, last_name, date_of_birth) VALUES
('Kwame', 'Mensah', '1985-06-15'),
('Amina', 'Abdullah', '1990-03-22'),
('Ngozi', 'Okafor', '1978-11-30'),
('Tunde', 'Adelakun', '2000-01-01'),
('Zainab', 'Bello', '1995-07-19'),
('Emeka', 'Ike', '1988-09-12'),
('Fatima', 'Yusuf', '1992-04-05'),
('John', 'Doe', '1980-12-25'),
('Jane', 'Smith', '1983-08-14'),
('Chinwe', 'Eze', '1997-02-28');

-- insert into doctors table
INSERT INTO doctors (first_name, last_name, specialty, phone_number, email) VALUES
('Dr. Kwame', 'Mensah', 'Cardiology', '123-456-7890', 'kwame.mensah@example.com'),
('Dr. Amina', 'Abdullah', 'Pediatrics', '234-567-8901', 'amina.abdullah@example.com'),
('Dr. Ngozi', 'Okafor', 'Neurology', '345-678-9012', 'ngozi.okafor@example.com'),
('Dr. Tunde', 'Adelakun', 'Orthopedics', '456-789-0123', 'tunde.adelakun@example.com'),
('Dr. Zainab', 'Bello', 'Dermatology', '567-890-1234', 'zainab.bello@example.com'),
('Dr. Emeka', 'Ike', 'General Surgery', '678-901-2345', 'emeka.ike@example.com'),
('Dr. Fatima', 'Yusuf', 'Psychiatry', '789-012-3456', 'fatima.yusuf@example.com'),
('Dr. John', 'Doe', 'Radiology', '890-123-4567', 'john.doe@example.com'),
('Dr. Jane', 'Smith', 'Oncology', '901-234-5678', 'jane.smith@example.com'),
('Dr. Chinwe', 'Eze', 'Endocrinology', '012-345-6789', 'chinwe.eze@example.com');