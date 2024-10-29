# SQL Assignment 2 - Portfolio

This repository contains solutions to a **SQL Problem Set**. The tasks cover SQL Data Manipulation Language (DML), Data Definition Language (DDL), and critical thinking involving SQL queries. Each task demonstrates a different SQL concept, providing a comprehensive showcase of querying and schema management.

## Table of Contents
- [Overview](#overview)
- [Schema](#schema)
- [Task Solutions](#task-solutions)
  - [Section A: SQL DML (SELECT)](#section-a-sql-dml-select)
  - [Section B: SQL DML (UPDATE, DELETE, INSERT)](#section-b-sql-dml-update-delete-insert)
  - [Section C: SQL DDL](#section-c-sql-ddl)
- [Usage](#usage)
- [License](#license)

## Overview
This assignment revolves around a **container deposit scheme** database, focusing on user transactions and deposits. The tasks involve writing SQL queries for:
- Retrieving data using SELECT statements.
- Manipulating data through INSERT, UPDATE, and DELETE operations.
- Defining and modifying database schemas using DDL commands.

## Schema
The relational schema used in the assignment is:

- **USERS**: User information.
- **CONTAINERS**: Container types and refund values.
- **LOCATIONS**: Locations for deposits.
- **DEPOSITS**: User deposit records.
- **PAYMENTS**: Payment records for users.

### Example Tables:
```sql
USERS(UserID, FirstName, LastName, Email, PhoneNumber, Balance)
CONTAINERS(ContainerID, ContainerType, Material, Capacity, RefundValue)
LOCATIONS(LocationID, LocationName, Address, PhoneNumber)
DEPOSITS(UserID, ContainerID, DepositDateTime, LocationID)
PAYMENTS(PaymentID, UserID, Date, Amount, Method)
```

## Task Solutions

### Section A: SQL DML (SELECT)
1. **A1: Retrieve Location Details**  
   **Skills:** `ORDER BY`, basic column selection.

2. **A2: Find Users with Initials 'F. G.'**  
   **Skills:** `JOIN`, subqueries, `DISTINCT`.

3. **A3: Count Deposits per Location**  
   **Skills:** `COUNT()`, `GROUP BY`, `ORDER BY`.

4. **A4: User with Maximum Balance**  
   **Skills:** `MAX()`, correlated subqueries.

5. **A5: Users with Null Phone Numbers**  
   **Skills:** `IS NULL`, `COUNT()`.

6. **A6: User with Most Glass Deposits**  
   **Skills:** CTEs, aggregation, subqueries.

7. **A7: Green Glass Deposits Between Dates**  
   **Skills:** `BETWEEN`, filtering, `COUNT()`.

8. **A8: Location with Greatest Average Weekend Refund**  
   **Skills:** Views, `DAYOFWEEK()`, `AVG()`.

9. **A9: Users Depositing Both Brown and PET Bottles**  
   **Skills:** `INTERSECT`, set operations.

10. **A10: Refund Summary for Location L004**  
    **Skills:** CTEs, `LEFT JOIN`, `COALESCE()`.

---

### Section B: SQL DML (UPDATE, DELETE, INSERT)
1. **B1: Update Location Name**  
   **Skills:** `UPDATE`, `SELECT`.

2. **B2: Delete Payments for Ravichandra Kota**  
   **Skills:** `DELETE`, subqueries.

---

### Section C: SQL DDL
1. **C1: Create BANKDETAILS Table**  
   **Skills:** `CREATE TABLE`, primary and foreign keys.

2. **C2: Add Constraints to CONTAINERS**  
   **Skills:** `ALTER TABLE`, `CHECK` constraints.
   
## Usage
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/sql-assignment-portfolio.git
   cd sql-assignment-portfolio
   ```
2. **Run Queries**:
    Use MySQL 8.0+ to execute the queries.
    Ensure the database schema is set up according to the provided tables.
3. **View Results**:
    You can use tools like MySQL Workbench or the command line to run the queries and view results.

## License:
This version of the **README.md** includes the task descriptions as comments above each SQL query. This makes it easy to understand the context of each query directly in the code and presents your work clearly on GitHub for portfolio purposes. Let me know if you need further modifications!
