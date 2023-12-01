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
VALUES ('123 Main St', 'Anytown', 'CA', '90210', 1000000.00, 2000, 3, 2, '2023-01-01', 'Charming 3 bedroom home in a great neighborhood.');

INSERT INTO house (address, city, state, zip_code, price, square_footage, bedrooms, bathrooms, date_listed, description) 
VALUES ('456 Oak Ave', 'Springfield', 'TX', '78901', 250000.00, 1500, 2, 1, '2023-02-15', 'Cozy 2 bedroom house with a large backyard.');