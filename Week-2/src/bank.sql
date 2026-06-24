CREATE TABLE CUSTOMERS (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Age NUMBER,
    Balance NUMBER,
    IsVIP CHAR(1)
);

CREATE TABLE LOANS(

    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    InterestRate NUMBER,
    DueDate DATE,

    FOREIGN KEY(CustomerID)
    REFERENCES CUSTOMERS(CustomerID)
);

-- insert values into CUSTOMER_TABLE
INSERT INTO CUSTOMERS
VALUES(1,'Rohit',65,15000,'N');

INSERT INTO CUSTOMERS
VALUES(2,'Rahul',45,8000,'N');

INSERT INTO CUSTOMERS
VALUES(3,'Aman',70,20000,'N');

INSERT INTO CUSTOMERS
VALUES(4,'Alia',58,12000,'N');

INSERT INTO CUSTOMERS
VALUES(5,'Radhika',62,9000,'N');

COMMIT;


-- insert values into LOANS_TABLE
INSERT INTO LOANS
VALUES(101, 1, 8, SYSDATE+20);

INSERT INTO LOANS
VALUES(102, 2, 10, SYSDATE+40);

INSERT INTO LOANS
VALUES(103, 3, 9, SYSDATE+10);

INSERT INTO LOANS
VALUES(104, 4, 7, SYSDATE+60);

INSERT INTO LOANS
VALUES(105, 5, 11, SYSDATE+25);

COMMIT;

-- scenario-1
BEGIN
FOR c IN(
    SELECT 
        c.CustomerID,
        c.Name, 
        c.Age, 
        l.LoanID 
    FROM CUSTOMERS c 
    JOIN LOANS l ON c.CustomerID=l.CustomerID
) LOOP

    IF c.Age>60 THEN
        UPDATE LOANS
        SET InterestRate = InterestRate-1
        WHERE LoanID = c.LoanID;

        DBMS_OUTPUT.PUT_LINE('Scenario-1: 1% discount applied for: ' || c.Name || ' (Customer ID: ' || c.CustomerID || ', Customer Age: ' || c.Age || ')');

    END IF;

END LOOP;

COMMIT;
END;
/

-- scenario-2
BEGIN
FOR c IN(
    SELECT 
        CustomerID,
        Name,
        Balance
    FROM CUSTOMERS
) LOOP
    IF c.Balance>10000 THEN
        UPDATE CUSTOMERS
        SET IsVIP='Y'
        WHERE CustomerID = c.CustomerID;
        DBMS_OUTPUT.PUT_LINE('Promoted to VIP: ' || c.Name || ' (Customer ID: ' || c.CustomerID || ')');
    END IF;

END LOOP;

COMMIT;
END;
/