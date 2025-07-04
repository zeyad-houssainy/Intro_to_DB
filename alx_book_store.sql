CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE IF NOT EXISTS Authors (
	author_id INT PRIMARY KEY NOT NULL, 
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Books (
	book_id INT NOT NULL PRIMARY KEY, 
	title VARCHAR(30) NOT NULL, 
	author_id INT NOT NULL, 
	price DOUBLE NOT NULL,
	publication_date DATE NOT NULL,
	FOREIGN KEY (author_id) REFERENCES Authors(author_id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);



CREATE TABLE IF NOT EXISTS Customers (
	customer_id INT PRIMARY KEY NOT NULL,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
);

CREATE TABLE IF NOT EXISTS Orders (
	order_id INT PRIMARY KEY NOT NULL,
	customer_id INT NOT NULL,
	order_date DATE NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Order_Details(
	orderdetailid INT PRIMARY KEY NOT NULL,
	order_id INT NOT NULL, 
	book_id INT NOT NULL, 
    quantity DOUBLE,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);
