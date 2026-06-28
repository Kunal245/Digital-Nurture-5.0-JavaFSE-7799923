CREATE TABLE ACCOUNTS (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    AccountType VARCHAR2(20),
    Balance NUMBER
);

CREATE TABLE EMPLOYEES (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER
);

INSERT INTO ACCOUNTS VALUES (101,'Kunal','Savings',10000);
INSERT INTO ACCOUNTS VALUES (102,'Rohan','Savings',15000);
INSERT INTO ACCOUNTS VALUES (103,'Rahul','Current',20000);
INSERT INTO ACCOUNTS VALUES (104,'Shruti','Savings',8000);
COMMIT;

INSERT INTO EMPLOYEES VALUES (1,'Amit','IT',50000);
INSERT INTO EMPLOYEES VALUES (2,'Rahul','HR',45000);
INSERT INTO EMPLOYEES VALUES (3,'Sneha','IT',60000);
INSERT INTO EMPLOYEES VALUES (4,'Priya','Finance',55000);
COMMIT;

SELECT * FROM ACCOUNTS;


-- scenario-1: applying an interest rate of 1% to savings account
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest IS
BEGIN
    UPDATE ACCOUNTS
    SET Balance = Balance * 1.01
    WHERE AccountType = 'Savings';
    DBMS_OUTPUT.PUT_LINE('1% Interest Applied Successfully.');
    COMMIT;
END;
/

BEGIN
    ProcessMonthlyInterest;
END;
/