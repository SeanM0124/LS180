/*
The customers table should include the following columns:

id is a unique numeric customer id that auto-increments and serves as a primary key for this table.
name is the customer's name. This value must be present in every record and may contain names of any length.
payment_token is a required unique 8-character string that consists of solely uppercase alphabetic letters. It identifies each customer's payment information with the payment processor the company uses.
*/
CREATE TABLE customers(
  id serial PRIMARY KEY,
  name text NOT NULL,
  payment_token char(8) NOT NULL UNIQUE CHECK (payment_token ~ '^[A-z{8}$]')
);

/*
The services table should include the following columns:

id is a unique numeric service id that auto-increments and serves as a primary key for this table.
description is the service description. This value must be present and may contain any text.
price is the annual service price. It must be present, must be greater than or equal to 0.00. The data type is numeric(10, 2)
*/
CREATE TABLE services(
  id serial PRIMARY KEY,
  description text NOT NULL,
  price decimal(10,2) NOT NULL CHECK (price > 0.00)
);

--Insert Data

INSERT INTO customers (name, payment_token)
VALUES
  ('Pat Johnson', 'XHGOAHEQ'),
  ('Nancy Monreal', 'JKWQPJKL'),
  ('Lynn Blake', 'KLZXWEEE'),
  ('Chen Ke-Hua', 'KWETYCVX'),
  ('Scott Lakso', 'UUEAPQPS'),
  ('Jim Pornot', 'XKJEYAZA');

INSERT INTO services (description, price)
VALUES
  ('Unix Hosting', 5.95),
  ('DNS', 4.95),
  ('Whois Registration', 1.95),
  ('High Bandwidth', 15.00),
  ('Business Support', 250.00),
  ('Dedicated Hosting', 50.00),
  ('Bulk Email', 250.00),
  ('One-to-one Training', 999.00);


/*
create a join table that associates customers with services and vice versa.
The join table should have columns for both the services id and the customers id, as well as a primary key named id that auto-increments.

The customer id in this table should have the property that deleting the corresponding customer record
from the customers table will automatically delete all rows from the join table that have that customer_id.
Do not apply this same property to the service id.

Each combination of customer and service in the table should be unique. In other words, a customer shouldn't
be listed as using a particular service more than once.
*/

CREATE TABLE customers_services(
  id serial PRIMARY KEY,
  customer_id integer REFERENCES customers (id) ON DELETE CASCADE NOT NULL,
  service_id integer REFERENCES services (id) NOT NULL,
  UNIQUE(customer_id, service_id)
);

INSERT INTO customers_services (customer_id, service_id)
VALUES
  (1, 1), 
  (1, 2), 
  (1, 3), 
  (3, 1), 
  (3, 2),
  (3, 3),
  (3, 4), 
  (3, 5), 
  (4, 1), 
  (4, 4), 
  (5, 1), 
  (5, 2), 
  (5, 6), 
  (6, 1),
  (6, 6),
  (6, 7);