-- Insert Doctors
INSERT INTO Doctors (FirstName, LastName, Email, Specialization) VALUES (N'Alaa', N'Alnuaimat', 'alaa@gmail.com', NULL);
INSERT INTO Doctors (FirstName, LastName, Email, Specialization) VALUES (N'Ahmad', N'Alkhatatbeh', 'ahmad.alkhatatbeh@example.com', N'Neurology');
INSERT INTO Doctors (FirstName, LastName, Email, Specialization) VALUES (N'Dana', N'Alzoubi', 'dana@gmail.com', N'Dermatology');
INSERT INTO Doctors (FirstName, LastName, Email, Specialization) VALUES (N'Mohammad', N'Alrawashdeh', 'mohammad.rawashdeh@example.com', N'General');
INSERT INTO Doctors (FirstName, LastName, Email, Specialization) VALUES (N'Sara', N'Almashaqbeh', 'sara@gmail.com', N'Pediatrics');

-- Insert Patients
INSERT INTO Patients (FirstName, LastName, DOB, Email, Gender, Address, Phone) VALUES 
(N'Ahmad', N'Alnuaimat', '1990-05-12', 'ahm@gmail.com', N'Male', N'Wasfi Al Tal St', '0798123456'),
(N'Dana', N'Alkhatatbeh', '1985-07-19', 'dan@gmail.com', N'Female', N'Mecca Street', '0786432190'),
(N'Omar', N'Alzoubi', '2000-10-25', 'omar.zoubi@example.com', N'Male', N'Gardens St', '0799988776'),
(N'Sara', N'Alrawashdeh', '1975-02-14', 'sar@gmail.com', N'Female', NULL, '0771234567'),
(N'Yousef', N'Almashaqbeh', '1995-11-01', 'yousef@gmail.com', N'Male', N'Sweifieh', '0786655443'),
(N'Lama', N'Alnuaimat', '1969-08-03', 'lama.n@example.com', N'Female', N'Jabal Amman', '0778844332'),
(N'Khaled', N'Alkhatatbeh', '1988-03-22', 'kha@gmail.com', N'Male', NULL, '0789776632'),
(N'Hala', N'Alzoubi', '2003-12-09', 'hala@gmail.com', N'Female', N'Abdoun', '0794455667'),
(N'Mohammad', N'Alrawashdeh', '1978-06-30', 'm.rawashdeh@example.com', N'Male', N'Khalda', '0773344556'),
(N'Alaa', N'Almashaqbeh', '1992-04-11', 'almas@gmail.com', N'Female', N'Marka', '0785566778');


-- Insert Appointments
INSERT INTO Appointments (AppointmentDate, Status, Reason, Doctor_id, Patient_id) VALUES
('2025-07-20 10:00:00', N'Scheduled', N'Follow-up for blood pressure', 6, 1),
('2025-07-21 11:30:00', N'Completed', N'General checkup', 7, 3),
('2025-07-22 13:00:00', N'Cancelled', NULL, 8, 4),
('2025-07-23 09:15:00', N'Scheduled', N'Skin rash', 9, 2),
('2025-07-19 23:30:00', N'Scheduled', null , 6, 4),
('2025-07-24 15:45:00', N'Completed', N'Back pain', 10, 5);


-- Insert MedicalRecords
INSERT INTO MedicalRecords (RecoredDate, Observation, Doctor_id, Patient_id) VALUES
('2024-12-15', N'Patient shows improvement in cholesterol levels.', 6, 1),
('2024-10-10', N'Persistent cough noted. Recommended x-ray.', 7, 2),
('2025-01-03', N'Skin irritation healing well.', 8, 4),
('2024-12-30', N'blood', 6, 3),
('2024-11-18', N'Blood pressure within normal range.', 9, 3),
('2025-02-25', N'Migraine episodes less frequent.', 10, 5);


-- Insert MedicalTest
INSERT INTO MedicalTest (TestDate, Name, Type, Note, Result, Doctor_id, Patient_id) VALUES
('2025-05-01', N'Blood Test', N'Lab', N'Check for anemia', N'Normal', 6, 1),
('2025-03-15', N'X-ray', N'Imaging', NULL, N'Normal', 7, 2),
('2025-04-10', N'MRI', NULL, N'Suspected inflammation', N'Abnormal', 8, 4),
('2025-02-05', N'CT Scan', N'Imaging', NULL, NULL, 9, 3),
('2025-01-20', N'Blood Test', N'Lab', N'Repeat test', N'Normal', 10, 5);


-- Insert Billing
INSERT INTO Billing (BillingDate, Amount, Status, PaymentMethod, Doctor_id, Patient_id) VALUES
('2025-07-10', 75.00, N'Paid', N'Cash', 6, 1),
('2025-07-12', 120.50, N'Pending', N'Insurance', 7, 2),
('2025-07-08', 90.25, N'Paid', N'Credit Card', 8, 4),
('2025-07-11', 60.00, N'Pending', N'Cash', 9, 3),
('2025-07-09', 100.00, N'Paid', N'Credit Card', 10, 5);

-- Insert Medications
INSERT INTO Medications (PrescriptionDate, Name, Frequency, Dosage, Doctor_id, Patient_id) VALUES
('2025-06-10', N'Panadol', N'Twice daily', N'500mg', 6, 1),
('2025-05-20', N'Augmentin', N'Once daily', N'250mg', 7, 2),
('2025-03-05', N'Brufen', N'Twice daily', N'500mg', 8, 4),
('2025-02-15', N'Panadol', N'Once daily', N'250mg', 9, 3),
('2025-04-22', N'Augmentin', N'Twice daily', N'500mg', 10, 5);

-- Insert Doctor Phones
INSERT INTO Doctor_Phones (Doctor_id, Phone) VALUES (6, '0798123456');
INSERT INTO Doctor_Phones (Doctor_id, Phone) VALUES (7, '0786432190');
INSERT INTO Doctor_Phones (Doctor_id, Phone) VALUES (7, '0786432191'); -- additional number
INSERT INTO Doctor_Phones (Doctor_id, Phone) VALUES (8, '0799988776');
INSERT INTO Doctor_Phones (Doctor_id, Phone) VALUES (9, '0771234567');
INSERT INTO Doctor_Phones (Doctor_id, Phone) VALUES (10, '0786655443');
