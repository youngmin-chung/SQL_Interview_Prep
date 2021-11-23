-- Suggested testing environment:
-- http://sqlite.online/

-- Example case create statement:
CREATE TABLE menu (
  itemName VARCHAR(50) PRIMARY KEY NOT NULL,
  category VARCHAR(50) NOT NULL,
  price DECIMAL(5,2)
);

INSERT INTO menu(itemName, category, price) VALUES('Vegetable Soup', 'Soups', 5);
INSERT INTO menu(itemName, category, price) VALUES('Spaghetti Bolognese', 'Mains', 6);

-- Insert answer here

SELECT * FROM menu;

-- Expected output (in any order):
-- itemName               category    price
-- ----------------------------------------
-- Vegetable Soup         Soups       5.5
-- Spaghetti Bolognese    Mains       6

-- Explanation:
-- In this example.
-- Vegetable soup is in the Soups category, which means its price should be increased from 5 dollars, by 10%, to 5.5 dollars.
-- Spaghetti Bolognese is in the Mains category, which means that its price should remain unchanged.