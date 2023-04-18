# Create bikeshowRoomDatabase
/*Model 	Model_id ,model_name,cost
Customer	Cust_id,first_name,last_name ,mobile_no,gender
Purchase	Purchase_id,cust_id,model_id,booking_amount,payment_id,purchase_date,rating_id
Payment_mode	Payment_id,payment_type(11-online,22-cash,33-cheque)
Feedback_rating	Rating_id,rating(5-excellent,4-good,3-average,2-bad,1-complaint)
*/

CREATE DATABASE bikeShowRoom;
USE bikeShowRoom;
CREATE TABLE model(
model_id INT PRIMARY KEY,
model_name VARCHAR(60),
cost FLOAT);

CREATE TABLE customer(
cust_id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
mobile_no BIGINT,
gender VARCHAR(10));

CREATE TABLE payment_mode (
  payment_id INT PRIMARY KEY,
  payment_type INT
);
ALTER TABLE payment_mode
MODIFY COLUMN payment_type VARCHAR(20);
CREATE TABLE feedback_rating (
  rating_id INT PRIMARY KEY,
  rating INT
);
ALTER TABLE feedback_rating
MODIFY COLUMN rating VARCHAR(20);
CREATE TABLE purchase (
  purchase_id INT PRIMARY KEY,
  cust_id INT,
  model_id INT,
  booking_amount DECIMAL(10,2),
  payment_id INT,
  purchase_date DATE,
  rating_id INT,
  FOREIGN KEY (cust_id) REFERENCES Customer(cust_id),
  FOREIGN KEY (model_id) REFERENCES Model(model_id),
  FOREIGN KEY (payment_id) REFERENCES Payment_mode(payment_id),
  FOREIGN KEY (rating_id) REFERENCES Feedback_rating(rating_id)
);