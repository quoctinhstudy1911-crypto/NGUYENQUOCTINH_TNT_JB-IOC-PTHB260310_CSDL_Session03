-- [Bài tập] Quản lý bán hàng

-- Tạo schema sales trong database LibraryDB
CREATE SCHEMA sales;

/*
Tạo bảng Products:
product_id (serial, khóa chính)
product_name (varchar)
price (numeric với 2 chữ số thập phân)
stock_quantity (integer)
*/
CREATE TABLE sales.Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC(10,2),
    stock_quantity INTEGER
);

/*
Tạo bảng Orders:
order_id (serial, khóa chính)
order_date (date, mặc định ngày hiện tại)
member_id (integer, khóa ngoại tham chiếu Members(member_id))
*/
CREATE TABLE sales.Orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    member_id INTEGER REFERENCES library.Members(member_id)
);
 
/*
Tạo bảng OrderDetails:
order_detail_id (serial, khóa chính)
order_id (integer, khóa ngoại tham chiếu Orders(order_id))
product_id (integer, khóa ngoại tham chiếu Products(product_id))
quantity (integer)
*/
CREATE TABLE sales.OrderDetails (
    order_detail_id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES sales.Orders(order_id),
    product_id INTEGER REFERENCES sales.Products(product_id),
    quantity INTEGER
);