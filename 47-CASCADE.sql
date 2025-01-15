DELETE FROM Customers WHERE Name='Ram';

-- This is the error while we want to delete any record from the parent table.

-- so to remove this error we use the DELETE ON CASECADE

Cannot delete or update a parent row: a foreign key constraint fails (`store`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cust_Id`) REFERENCES `customers` (`Id`))


CREATE TABLE Orders (Order_Id INT PRIMARY KEY AUTO_INCREMENT,Date DATE,Amount DECIMAL(10,2),cust_Id INT,FOREIGN KEY (cust_Id) 
REFERENCES customers(Id) ON DELETE CASCADE);

-- Deleted successfully.

DELETE FROM Customers WHERE Name='Paul';