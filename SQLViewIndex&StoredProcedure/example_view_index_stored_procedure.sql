-- Bước 1: Tạo cơ sở dữ liệu demo
CREATE DATABASE demo;
use demo;
-- Bước 2: Tạo bảng Products với các trường dữ liệu sau:
-- Id
-- productCode
-- productName
-- productPrice
-- productAmount
-- productDescription
-- productStatus
-- Chèn một số dữ liệu mẫu cho bảng Products.
CREATE TABLE Products (
    id INT AUTO_INCREMENT PRIMARY KEY,      -- Khóa chính, tự động tăng
    productCode VARCHAR(50) NOT NULL,       -- Mã sản phẩm (duy nhất)
    productName VARCHAR(100) NOT NULL,      -- Tên sản phẩm
    productPrice DECIMAL(10,2) NOT NULL,    -- Giá sản phẩm (ví dụ 99999999.99)
    productAmount INT NOT NULL,             -- Số lượng sản phẩm
    productDescription TEXT,                -- Mô tả sản phẩm
    productStatus VARCHAR(20) NOT NULL     -- Trạng thái sản phẩm (VD: 'active', 'inactive')
);

INSERT INTO Products 
(productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES
('P001', 'Laptop Dell XPS 13', 25000.00, 10, 'Laptop mỏng nhẹ, cấu hình mạnh', 'active');

-- Bước 3:
EXPLAIN SELECT * FROM products WHERE productCode = 'P001';
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
ALTER TABLE products ADD UNIQUE idx_productCode (productCode);
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
ALTER TABLE products ADD INDEX idx_name_price (productName, productPrice);
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
-- So sánh câu truy vấn trước và sau khi tạo index
EXPLAIN SELECT * FROM products WHERE productCode = 'P001';

-- Bước 4:
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW products_view AS SELECT productCode, productName, productPrice, productStatus FROM products;
-- Tiến hành sửa đổi view
CREATE OR REPLACE VIEW products_view AS SELECT productCode, productName, productPrice, productAmount, productStatus FROM products;
-- Tiến hành xoá view
DROP VIEW products_view;

-- Bước 5:
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
DELIMITER //
CREATE PROCEDURE getAllProducts()
BEGIN 
	SELECT * FROM products;
END //
DELIMITER ;
CALL getAllProducts;

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER //
CREATE PROCEDURE insertProduct(
	IN p_code VARCHAR(50),
    IN p_name VARCHAR(100),
    IN p_price DECIMAL(10,2),
    IN p_amount INT,
    IN p_description TEXT,
    IN p_status VARCHAR(20)
)
BEGIN 
	INSERT INTO products 
    (productCode, productName, productPrice, productAmount, productDescription, productStatus)
	VALUES
	(p_code, p_name, p_price, p_amount, p_description, p_status);
END //
DELIMITER ;

CALL insertProduct('P002', 'iPhone 15 Pro', 35000.00, 5, 'Điện thoại Apple cao cấp', 'active');

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER //
CREATE PROCEDURE updateProduct(
	IN p_id INT,
	IN p_code VARCHAR(50),
    IN p_name VARCHAR(100),
    IN p_price DECIMAL(10,2),
    IN p_amount INT,
    IN p_description TEXT,
    IN p_status VARCHAR(20)
)
BEGIN 
	UPDATE products 
    SET productCode = p_code,
        productName = p_name,
        productPrice = p_price,
        productAmount = p_amount,
        productDescription = p_description,
        productStatus = p_status
    WHERE id = p_id;
END //
DELIMITER ;
CALL updateProduct(
    1,
    'P001',
    'Laptop Dell XPS 15',
    30000.00,
    8,
    'Laptop cao cấp, màn hình 15 inch',
    'active'
);

-- Tạo store procedure xoá sản phẩm theo id
DELIMITER //
CREATE PROCEDURE daleteProduct(
	IN p_id INT
)
BEGIN 
	DELETE FROM products
    WHERE id = p_id;
END //
DELIMITER ;

CALL daleteProduct(2);