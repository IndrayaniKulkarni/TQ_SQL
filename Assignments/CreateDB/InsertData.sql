# add data to book db
USE bookdb;

DESC author;
INSERT INTO author VALUES
(101,"Oscar Wilde",1234567890,"oscarW@gmail.com","34TiteStreet","Chelsea") ;
INSERT INTO author VALUES
(102,"Neil Gaiman",9834567890,"gaimanNeil@gmail.com","4470W.SunsetBlvd","LosAngeles"),
(103,"Arthur Dolye",9734567890,"arthurcd@gmail.com","221B BakerStreet ","London"),
(104,"Devdutt Pattanaik",9834567890,"devadutt@gmail.com","Chembur","Mumbari"),
(105,"Mark Gatiss",0234567890,"markGatiss@gmail.com","125MortlakeHighStreet","London"),
(106,"Jane Austen",9034567890,"janeAusten@gmail.com","WinchesterRd","Chawton");

INSERT INTO book VALUES
(5001,"The Picture of Dorian Gray",101,500.0);
INSERT INTO book VALUES
(5002,"The Graveyard Book",102,450.0),
(5003,"The Valley of Fear",103,350.0),
(5004,"my Geeta",104,350.0);
INSERT INTO book VALUES
(5005,"The Vesuvius Club",105,450.0),
(5006,"Pride and Prejudice",106,600.0);

SELECT * FROM book;
SELECT * FROM author;

INSERT INTO book VALUES
(5007,"The Importance of Being Earnest",101,350.0);
INSERT INTO book VALUES
(5008,"The Sandman",102,700.0),
(5009,"The Adventures of Sherlock Holmes",103,350.0),
(5010,"Olympus",104,350.0);
INSERT INTO book VALUES
(5011,"The Devil in Amber",105,350.0),
(5012,"Emma",106,550.0);

INSERT INTO awards VALUES
(1, 'Pulitzer Prize', 10000),
(2, 'National Book Award', 5000),
(3, 'Man Booker Prize', 7500),
(4, 'Nebula Award', 8000);

INSERT INTO author_award (award_id,author_id, award_type_id, book_id, year) VALUES
(201,101, 3, 5001, 1891),
(202,102, 1, 5002, 2009),
(203,102, 4, 5002, 2009),
(204,103, 2, 5003, 1915),
(205,104, 4, 5004, 2019),
(206,105, 1, 5005, 2004),
(207,106, 3, 5006, 1813),
(208,106, 2, 5006, 1813),
(209,101, 4, 5007, 1895),
(210,102, 3, 5008, 1991),
(211,103, 1, 5009, 1892),
(212,104, 2, 5010, 2006),
(213,105, 4, 5011, 2006),
(214,106, 1, 5012, 1815);

SELECT * FROM awards;
SELECT * FROM author_award;

