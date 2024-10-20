CREATE DATABASE IF NOT EXISTS alx_book_store;

create table Books (
book_id INT Primary Key,
title VARCHAR(130),
Foreign Key (author_id) references Authors(author_id),
price DOUBLE,
publication_date DATE
);

create table Authors (
author_id INT Primary Key,
author_name VARCHAR(215)
);

create table Customers (
customer_id INT Primary Key,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);

create table Orders (
order_id INT Primary Key,
Foreign Key (customer_id) references Customers(customer_id),
order_date DATE
); 

create table Order_Details(
orderdetailid INT Primary Key,
Foreign Key (order_id) references Orders(order_id),
Foreign Key (book_id) references Books(book_id),
quantity DOUBLE
);