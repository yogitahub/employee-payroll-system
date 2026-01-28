import mysql.connector

# Database connection
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="payroll_system"
)

cursor = conn.cursor()



# Fetch employee data
cursor.execute("SELECT emp_id, name, department, base_salary, bonus, deductions FROM employees")
employees = cursor.fetchall()

print("\n--- EMPLOYEE PAYROLL DETAILS ---\n")

for emp in employees:
    emp_id, name, dept, base, bonus, deduction = emp
    net_salary = base + bonus - deduction

    print(f"ID: {emp_id}")
    print(f"Name: {name}")
    print(f"Department: {dept}")
    print(f"Net Salary: ₹{net_salary}")
    print("-" * 40)

conn.close()