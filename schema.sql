CREATE DATABASE payroll_system;
USE payroll_system;
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    deductions DECIMAL(10,2)
);
INSERT INTO employees (name, department, base_salary, bonus, deductions)VALUES
('Rahul Sharma', 'IT', 40000, 5000, 2000),
('Anjali Patel', 'HR', 35000, 3000, 1500),
('Amit Verma', 'Finance', 50000, 7000, 3000),
('Suresh Kumar', 'IT', 45000, 6000, 2500),
('Priya Mehta', 'HR', 36000, 3500, 1800),
('Rohit Singh', 'Finance', 52000, 8000, 3200),
('Neha Agarwal', 'Marketing', 40000, 4500, 2000),
('Aakash Jain', 'IT', 48000, 7000, 3000),
('Pooja Nair', 'HR', 34000, 3000, 1500),
('Vikram Rao', 'Operations', 42000, 5000, 2200),
('Sneha Kulkarni', 'Finance', 51000, 7500, 2800),
('Arjun Malhotra', 'Sales', 39000, 4200, 1900),
('Kavita Deshmukh', 'Marketing', 41000, 4800, 2100),
('Nitin Patil', 'IT', 47000, 6500, 2600),
('Riya Shah', 'HR', 33000, 2800, 1400),
('Manish Gupta', 'Operations', 44000, 5200, 2400),
('Ananya Bose', 'Finance', 53000, 8200, 3300),
('Deepak Yadav', 'Sales', 38000, 4000, 1800),
('Mehul Joshi', 'IT', 49000, 7200, 2900),
('Isha Kapoor', 'Marketing', 40500, 4600, 2050);
SELECT * FROM employees;
