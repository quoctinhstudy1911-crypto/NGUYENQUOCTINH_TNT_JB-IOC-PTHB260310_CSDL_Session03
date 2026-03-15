
-- [Bài tập] Thay đổi cấu trúc bảng

-- Dựa vào dữ liệu của 2 bài trước hãy thực hiện các yêu cầu sau:
	-- Thêm cột genre (varchar) vào bảng Books
ALTER TABLE library.Books
ADD COLUMN genre VARCHAR(50);
	-- Đổi tên cột available thành is_available
ALTER TABLE library.Books
RENAME COLUMN available TO is_available;
	-- Xóa cột email khỏi bảng Members
ALTER TABLE library.Members
DROP COLUMN email;
	-- Xóa bảng OrderDetails khỏi schema sales
DROP TABLE sales.OrderDetails;