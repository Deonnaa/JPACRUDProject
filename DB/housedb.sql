-- Drop the existing housing database if it exists
DROP DATABASE IF EXISTS housedb;

-- Create a new housing database
CREATE DATABASE IF NOT EXISTS housedb;

-- Select the housing database for use
USE housedb;

-- Create a table for housing data
CREATE TABLE house (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  address VARCHAR(255) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(50) NOT NULL,
  zip_code VARCHAR(10) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  square_footage INTEGER,
  bedrooms INTEGER,
  bathrooms INTEGER,
  date_listed DATE,
  description TEXT,
  image_url VARCHAR(2000)
);

-- Drop the existing user if it exists
DROP USER IF EXISTS housedbuser@localhost;

-- Create a new user with specific permissions
CREATE USER IF NOT EXISTS housedbuser@localhost IDENTIFIED BY 'housedb';

-- Grant permissions to the new user for the housing database
GRANT SELECT, INSERT, UPDATE, DELETE ON housedb.* TO housedbuser@localhost;

-- Insert sample data into the house table
INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description) 
VALUES ('333 Main St', 'Anytown', 'CA', '90210', 1000000.00, 2000, 3, 2, '2023-01-05', 'Charming 3 bedroom home in a great neighborhood.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description) 
VALUES ('456 Oak Ave', 'Springfield', 'TX', '78901', 250000.00, 1500, 2, 1, '2023-01-05', 'Cozy 2 bedroom house with a large backyard.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description) 
VALUES ('101 Cross Creek Rd', 'Fayetteville', 'NC', '28301', 200000.00, 1400, 3, 2, '2023-01-05', 'Charming family home in a peaceful neighborhood.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('202 Fort Bragg Rd', 'Fayetteville', 'NC', '28303', 220000.00, 1600, 4, 2, '2023-01-12', 'Modern home close to amenities and schools.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('303 Green St', 'Fayetteville', 'NC', '28301', 185000.00, 1300, 3, 1, '2023-01-20', 'Cozy home in a convenient location.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('404 Hay St', 'Fayetteville', 'NC', '28301', 210000.00, 1500, 3, 2, '2023-01-28', 'Beautifully renovated with a large yard.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('505 Person St', 'Fayetteville', 'NC', '28301', 195000.00, 1350, 2, 2, '2023-02-04', 'Ideal starter home in a friendly area.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('606 Russell St', 'Fayetteville', 'NC', '28301', 230000.00, 1650, 4, 3, '2023-02-12', 'Spacious and well-maintained property.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('707 Cool Spring St', 'Fayetteville', 'NC', '28301', 250000.00, 1800, 4, 2, '2023-02-20', 'Modern family home in a prime location.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('808 Gillespie St', 'Fayetteville', 'NC', '28301', 260000.00, 1900, 4, 2, '2023-02-28', 'Luxury home with top-notch features.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('909 Robeson St', 'Fayetteville', 'NC', '28301', 240000.00, 1700, 3, 2, '2023-03-08', 'Contemporary design with a cozy feel.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1001 Bragg Blvd', 'Fayetteville', 'NC', '28301', 225000.00, 1600, 3, 2, '2023-03-15', 'Charming and well-located family residence.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description) 
VALUES ('301 Queens Rd', 'Charlotte', 'NC', '28204', 350000.00, 1800, 3, 2, '2023-04-01', 'Stylish apartment in a desirable area.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('402 East Blvd', 'Charlotte', 'NC', '28203', 375000.00, 1900, 4, 3, '2023-04-10', 'Spacious family house with a beautiful backyard.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('503 Park Rd', 'Charlotte', 'NC', '28209', 360000.00, 1850, 3, 2, '2023-04-18', 'Modern home with open floor plan.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('604 Tryon St', 'Charlotte', 'NC', '28202', 340000.00, 1750, 3, 2, '2023-04-26', 'Urban living at its finest.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('705 Church St', 'Charlotte', 'NC', '28202', 380000.00, 2000, 4, 2, '2023-05-04', 'Elegant and spacious in the heart of the city.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('806 Camden Rd', 'Charlotte', 'NC', '28203', 400000.00, 2100, 4, 3, '2023-05-12', 'Family home with stunning interior design.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('907 Morehead St', 'Charlotte', 'NC', '28204', 410000.00, 2200, 5, 3, '2023-05-20', 'Luxurious property in an exclusive area.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1008 Trade St', 'Charlotte', 'NC', '28202', 330000.00, 1700, 3, 2, '2023-05-28', 'Contemporary townhouse with great amenities.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1109 Davidson St', 'Charlotte', 'NC', '28202', 420000.00, 2300, 5, 4, '2023-06-05', 'Impressive family home with a spacious layout.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1210 Graham St', 'Charlotte', 'NC', '28202', 390000.00, 2050, 4, 2, '2023-06-13', 'Stunning home with a perfect blend of style and comfort.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description) 
VALUES ('501 Hillsborough St', 'Raleigh', 'NC', '27603', 320000.00, 1700, 3, 2, '2023-07-01', 'Contemporary townhouse in a central location.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('602 Glenwood Ave', 'Raleigh', 'NC', '27605', 340000.00, 1750, 4, 2, '2023-07-10', 'Elegant home in a vibrant neighborhood.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('703 Fayetteville St', 'Raleigh', 'NC', '27601', 355000.00, 1800, 3, 2, '2023-07-18', 'Chic and modern downtown residence.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('804 New Bern Ave', 'Raleigh', 'NC', '27601', 365000.00, 1850, 3, 2, '2023-07-26', 'Family-friendly home with ample space.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('905 Capital Blvd', 'Raleigh', 'NC', '27603', 380000.00, 2000, 4, 3, '2023-08-03', 'Luxury living with exceptional features.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1006 Wade Ave', 'Raleigh', 'NC', '27605', 400000.00, 2100, 4, 3, '2023-08-11', 'Stunning property with a beautiful garden.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1107 Hargett St', 'Raleigh', 'NC', '27601', 420000.00, 2200, 5, 4, '2023-08-19', 'Spacious and elegant in a prime location.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1208 Saunders St', 'Raleigh', 'NC', '27603', 390000.00, 2050, 4, 3, '2023-08-27', 'Modern home with a unique charm.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1309 Morgan St', 'Raleigh', 'NC', '27604', 410000.00, 2150, 5, 3, '2023-09-04', 'Exquisite design in a desirable neighborhood.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description)
VALUES ('1410 Blount St', 'Raleigh', 'NC', '27601', 370000.00, 1900, 4, 2, '2023-09-12', 'Beautifully crafted home with luxurious finishes.');
