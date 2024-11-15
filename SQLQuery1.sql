CREATE TABLE Patients (
    PatientId INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Gender NVARCHAR(10),
    ContactInfo NVARCHAR(100),
    CreatedAt DATETIME DEFAULT GETDATE()
)

CREATE TABLE Doctors (
    DoctorId INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL,
    Specialization NVARCHAR(100),
    ContactInfo NVARCHAR(100),
    Availability NVARCHAR(100) -- ��� "�������-������"
)

CREATE TABLE Appointments (
    AppointmentId INT IDENTITY(1,1) PRIMARY KEY,
    PatientId INT FOREIGN KEY REFERENCES Patients(PatientId),
    DoctorId INT FOREIGN KEY REFERENCES Doctors(DoctorId),
    AppointmentDate DATETIME,
    Status NVARCHAR(20) CHECK (Status IN ('Scheduled', 'Completed', 'Cancelled'))
)

CREATE TABLE MedicalHistory (
    HistoryId INT IDENTITY(1,1) PRIMARY KEY,
    PatientId INT FOREIGN KEY REFERENCES Patients(PatientId),
    Condition NVARCHAR(100),
    Treatment NVARCHAR(100),
    DateRecorded DATETIME DEFAULT GETDATE()
)