-- [Bài tập] Thiết kế CSDL quản lý trường học

-- Thiết kế database SchoolDB quản lý sinh viên, môn học và điểm
CREATE DATABASE SchoolDB;
-- Tạo các bảng:
	-- Students (student_id, name, dob)
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    dob DATE
);
	-- Courses (course_id, course_name, credits)
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    dob DATE
);
	-- Enrollments (enrollment_id, student_id, course_id, grade)
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
-- student_id và course_id trong Enrollments là khóa ngoại
    student_id INTEGER REFERENCES Students(student_id),
    course_id INTEGER REFERENCES Courses(course_id),
    grade CHAR(1),
-- grade chỉ được phép là các giá trị A, B, C, D, F
    CONSTRAINT chk_grade CHECK (grade IN ('A','B','C','D','F'))
);

	
