INSERT INTO bankmanagement.customer (c_ID, c_name, mno, address, city, DOB) VALUES ("C1", "Ankur", 838289, "Domlur", "Bangalore", 1990-09-11);
INSERT INTO bankmanagement.customer (c_ID, c_name, mno, address, city, DOB) VALUES ("C2", "John", 89849, "Vaishali", "Jaipur", 1992-10-10);
INSERT INTO bankmanagement.customer (c_ID, c_name, mno, address, city, DOB) VALUES ("C3", "Raman", 888950, "Marathali", "Bangalore", 1987-08-15);

UPDATE bankmanagement.customer SET city = "Bangalore"
 WHERE c_ID LIKE "C2";

DELETE 
FROM bankmanagement.customer
WHERE c_ID LIKE "C3";