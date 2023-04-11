#11 Apr 2023
# can't run this first if we don't have data in supplier
# as in item table we are ref. supid from supplier table
# supplier must content data in order to insert data in the item table
# referntial integrity 

# because it if supplier doesn't exist then how item could be present in item table 

INSERT INTO item
VALUES (10,"mouse",1000,101),
(20,"motherboard",5000,102);

INSERT INTO supplier
VALUES (101,"John","Chase",9090101243,"chasejohn@gmail.com"),
(102,"Alison","Cameron",9090101290,"alisonC@gmail.com"),
(103,"Alice","Green",9090436243,"aliceg@gmail.com");
 INSERT INTO supplier
VALUES (101,"John","Chase",9090101243,"chasejohn@gmail.com"),
(102,"Alison","Cameron",9090101290,"alisonC@gmail.com"); 
INSERT INTO supplier
VALUES
    (104, "David", "Smith", 9090436233, "davidsmith@gmail.com"),
    (105, "Linda", "Johnson", 9090101256, "lindajohnson@gmail.com"),
    (106, "Richard", "Brown", 9090567845, "richardbrown@gmail.com"),
    (107, "Emily", "Davis", 9090321456, "emilydavis@gmail.com"),
    (108, "Daniel", "Wilson", 9090101209, "danielwilson@gmail.com");

INSERT INTO item (itemId, itemName, cost, supId)
VALUES 
    (30, "keyboard", 1500, 101),
    (40, "monitor", 8000, 102),
    (50, "printer", 4500, 101),
    (60, "scanner", 5500, 103),
    (70, "speakers", 2000, 102);


# Foreign Key Options

# Restrict : By default > Dosenot allow us to delete a primary key row from parent table if that
# key is acting as foreign key in child table

DELETE FROM supplier 
WHERE
    supid = 102;

DELETE FROM supplier 
WHERE
    supid = 107;

DELETE FROM supplier 
WHERE
    supid = 102;

#NO Action:It is similar to RESTRICT.
# But it has one difference that it checks referential integrity after trying to modify the table.

#Set Null

#Delete foreign key
ALTER TABLE item
DROP FOREIGN KEY item_ibfk_1;

# add foreign key 

ALTER TABLE item 
ADD CONSTRAINT fk_supplier
FOREIGN KEY (supid) REFERENCES supplier(supid)
ON DELETE SET NULL
ON UPDATE SET NULL;

DELETE FROM supplier 
WHERE
    supid = 101;


SELECT * 
FROM item;

desc item;