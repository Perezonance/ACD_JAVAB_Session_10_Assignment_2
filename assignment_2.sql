INSERT INTO bankmanagement.customer (c_ID, c_name, mno, address, city, DOB) VALUES ("C1", "Ankur", 838289, "Domlur", "Bangalore", 1990-09-11);
INSERT INTO bankmanagement.customer (c_ID, c_name, mno, address, city, DOB) VALUES ("C2", "John", 89849, "Vaishali", "Jaipur", 1992-10-10);
INSERT INTO bankmanagement.customer (c_ID, c_name, mno, address, city, DOB) VALUES ("C3", "Raman", 888950, "Marathali", "Bangalore", 1987-08-15);

UPDATE bankmanagement.customer SET city = "Bangalore"
 WHERE c_ID LIKE "C2";

DELETE 
FROM bankmanagement.customer
WHERE c_ID LIKE "C3";

CREATE TABLE `bankmanagement`.`account` (
  `ACCT_NO` VARCHAR(10) NOT NULL,
  `C_ID` VARCHAR(10) NULL,
  `TYPE` VARCHAR(10) NULL CHECK(TYPE = "Savings" OR "Current"),
  `Balance` INT NULL,
  PRIMARY KEY (`ACCT_NO`),
  INDEX `Customer-C_ID_idx` (`C_ID` ASC) VISIBLE,
  CONSTRAINT `Customer-C_ID`
    FOREIGN KEY (`C_ID`)
    REFERENCES `bankmanagement`.`customer` (`c_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO bankmanagement.account (ACCT_NO, C_ID, TYPE, Balance) VALUES ("CA1", "C1", "Savings", 50000);
INSERT INTO bankmanagement.account (ACCT_NO, C_ID, TYPE, Balance) VALUES ("CA2", "C2", "Savings", 10000);