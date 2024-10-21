USE Colegio;


CREATE TABLE School (
    SchoolId INT PRIMARY KEY,
    SchoolName VARCHAR(100),
    SchoolPhone VARCHAR(15),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(10)
);


CREATE TABLE Class (
    ClassId INT PRIMARY KEY,
    SchoolId INT,
    ClassName VARCHAR(100),
    Description VARCHAR(100),
    FOREIGN KEY (SchoolId) REFERENCES School(SchoolId)
);

-- Crear tabla COURSE
CREATE TABLE Course (
    CourseId INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Description VARCHAR(100)
);


CREATE TABLE Student (
    StudentId INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Birthdate DATE,
    Phone VARCHAR(15),
    Email VARCHAR(100)
);


CREATE TABLE Student_Course (
    StudentId INT,
    CourseId INT,
    PRIMARY KEY (StudentId, CourseId),
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
    FOREIGN KEY (CourseId) REFERENCES Course(CourseId)
);


CREATE TABLE Teacher (
    TeacherId INT PRIMARY KEY,
    TeacherName VARCHAR(100),
    TeacherPhone VARCHAR(15),
    Description VARCHAR(100)
);


CREATE TABLE Teacher_Course (
    TeacherId INT,
    CourseId INT,
    PRIMARY KEY (TeacherId, CourseId),
    FOREIGN KEY (TeacherId) REFERENCES Teacher(TeacherId),
    FOREIGN KEY (CourseId) REFERENCES Course(CourseId)
);


CREATE TABLE Grade (
    StudentId INT,
    CourseId INT,
    Grade INT,
    Comment VARCHAR(1000),
    PRIMARY KEY (StudentId, CourseId),
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
    FOREIGN KEY (CourseId) REFERENCES Course(CourseId)
);