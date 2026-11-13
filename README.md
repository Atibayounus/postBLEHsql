# PostgreSQL 

This file contains SQL practice queries using PostgreSQL. It focuses on creating relational tables, inserting records, handling duplicate values, and retrieving data.

## Topics Covered

- `CREATE TABLE` – Creating tables
- `SERIAL` – Auto-incrementing IDs
- `PRIMARY KEY` – Unique row identification
- `FOREIGN KEY` – Establishing relationships between tables
- `UNIQUE` and `NOT NULL` constraints
- `CHECK` constraint – Restricting allowed values
- `DEFAULT` values
- `JSONB` data type
- `INSERT INTO` – Inserting single records
- Multiple-row insertion
- `ON CONFLICT DO NOTHING` – Ignoring duplicate entries
- `SELECT *` – Retrieving table records

## Database Tables

### 1. DEPARTMENTS
Stores department information.

| Column | Data Type | Description |
|---|---|---|
| ID | SERIAL | Primary key |
| NAME | VARCHAR(100) | Unique department name |

### 2. USERS
Stores user information.

| Column | Data Type | Description |
|---|---|---|
| ID | SERIAL | Primary key |
| NAME | VARCHAR(100) | User name |
| EMAIL | VARCHAR(150) | Unique email |
| ROLE | VARCHAR(50) | Student, Professor, or Admin |
| DEPARTMENT_ID | INT | Foreign key |
| METADATA | JSONB | Additional JSON data |
| IS_ACTIVE | BOOLEAN | Account status |
| CREATED_AT | TIMESTAMP | Record creation time |

## Important Concept: ON CONFLICT DO NOTHING

```sql
INSERT INTO DEPARTMENTS(NAME)
VALUES ('physics')
ON CONFLICT (NAME) DO NOTHING;
```

This prevents duplicate department names from causing an error. If the department already exists, PostgreSQL skips the insertion.

## Technologies

- PostgreSQL
- SQL

## Purpose

This is part of my SQL learning journey, where I practise database creation, table relationships, constraints, and data manipulation.

**Learning by writing queries, one step at a time!**
