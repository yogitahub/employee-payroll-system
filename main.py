import mysql.connector
import csv

# Database connection
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="payroll_system"
)

cursor = conn.cursor()

# Fetch employee data
cursor.execute(
    "SELECT emp_id, name, department, base_salary, bonus, deductions FROM employees"
)
employees = cursor.fetchall()

print("\n--- EMPLOYEE PAYROLL DETAILS ---\n")

# Create CSV file
with open("payroll_report.csv", "w", newline="", encoding="utf-8") as file:
    writer = csv.writer(file)

    # CSV Header
    writer.writerow(["Employee ID", "Name", "Department", "Net Salary"])

    for emp in employees:
        emp_id, name, dept, base, bonus, deduction = emp
        net_salary = base + bonus - deduction

        # Print to terminal
        print(f"ID: {emp_id}")
        print(f"Name: {name}")
        print(f"Department: {dept}")
        print(f"Net Salary: ₹{net_salary}")
        print("-" * 40)

        # Write to CSV
        writer.writerow([emp_id, name, dept, net_salary])

conn.close()

print("\nPayroll report saved as payroll_report.csv")


