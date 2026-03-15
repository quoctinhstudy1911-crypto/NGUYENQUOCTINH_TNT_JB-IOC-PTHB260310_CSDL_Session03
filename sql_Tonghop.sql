-- [Bài tập] Thực hành tổng hợp thiết kế CSDL

-- Thiết kế database CompanyDB quản lý nhân viên, phòng ban và dự án
CREATE DATABASE CompanyDB;
-- Tạo các bảng:
	-- Employees (emp_id, name, dob, department_id)
CREATE TABLE Departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);
	-- Departments (department_id, department_name)
CREATE TABLE Employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    department_id INTEGER REFERENCES Departments(department_id)
);
	-- Projects (project_id, project_name, start_date, end_date)
CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE
);
	-- EmployeeProjects (emp_id, project_id) — bảng liên kết nhiều-nhiều
CREATE TABLE EmployeeProjects (
    emp_id INTEGER REFERENCES Employees(emp_id),
    project_id INTEGER REFERENCES Projects(project_id),
    PRIMARY KEY (emp_id, project_id)
);
-- Thêm khóa chính, khóa ngoại và kiểu dữ liệu hợp lý cho từng cột.
