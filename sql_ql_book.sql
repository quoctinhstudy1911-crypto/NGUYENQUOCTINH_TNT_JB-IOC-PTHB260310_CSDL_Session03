--                          [Bài tập] Quản lý thư viện sách
-- Tạo một database có tên LibraryDB
CREATE DATABASE LibraryDB;

--Trong database, tạo một schema library
CREATE SCHEMA library;

--Trong schema library, tạo bảng Books với các cột:
/*
book_id (số nguyên, khóa chính)
title (chuỗi ký tự)
author (chuỗi ký tự)
published_year (năm xuất bản, kiểu integer)
available (boolean, mặc định là TRUE)
*/
CREATE TABLE library.Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    published_year INTEGER,
    available BOOLEAN DEFAULT TRUE
);

-- Tạo bảng Members với các cột:
/*
member_id (số nguyên, khóa chính)
name (chuỗi ký tự)
email (chuỗi ký tự, không được trùng)
join_date (ngày, mặc định ngày hiện tại)
*/
CREATE TABLE library.Members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    join_date DATE DEFAULT CURRENT_DATE
);