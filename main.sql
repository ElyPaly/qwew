CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(100),
  email VARCHAR(50),
  phone VARCHAR(20)
);

CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  name VARCHAR(50),
  description TEXT,
  price DECIMAL(10,2)
);

CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  status VARCHAR(20),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderDetails (
  order_detail_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Payments (
  payment_id INT PRIMARY KEY,
  order_id INT,
  payment_date DATE,
  amount DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);