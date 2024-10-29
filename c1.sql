-- Task: Create the BANKDETAILS table with appropriate constraints and foreign keys.

CREATE TABLE BANKDETAILS (
    AccountNumber INT NOT NULL,
    BSBNumber INT(6) NOT NULL,
    AccountName VARCHAR(24) NOT NULL,
    UserID INT NOT NULL,
    Preferred BINARY,
    PRIMARY KEY (AccountNumber, BSBNumber),
    FOREIGN KEY (UserID) REFERENCES USERS(UserID)
);
