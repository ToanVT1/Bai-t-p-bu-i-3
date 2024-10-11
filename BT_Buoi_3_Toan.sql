
-- Table users
CREATE TABLE users (
	users_id INT PRIMARY KEY AUTO_INCREMENT,
	full_name VARCHAR(255),
	email VARCHAR(255),
	pass_word VARCHAR(255)
)



-- Table food_type
CREATE TABLE food_type (
	type_id INT PRIMARY KEY AUTO_INCREMENT,
	type_name VARCHAR(255)
	)


-- Table foods
CREATE TABLE foods (
	foods_id INT PRIMARY KEY AUTO_INCREMENT,
	foods_name VARCHAR(255),
	image VARCHAR(255),
	price FLOAT,
	description VARCHAR(255), 
	type_id INT,
	FOREIGN KEY(type_id) REFERENCES food_type (type_id)
)
-- Table Orders
CREATE TABLE orders (
	orders_id INT PRIMARY KEY AUTO_INCREMENT,
	users_id INT,
	foods_id INT,
	amount INT,
	code VARCHAR (255),
	FOREIGN KEY (users_id) REFERENCES users (users_id),
	FOREIGN KEY (foods_id) REFERENCES foods (foods_id)
)
-- Table Sub_food
CREATE TABLE sub_food (
	sub_id INT PRIMARY KEY AUTO_INCREMENT,
	sub_name VARCHAR(255),
	sub_price FLOAT,
	foods_id INT,
	FOREIGN KEY (foods_id) REFERENCES foods (foods_id)
)
-- Table restaurant
CREATE TABLE restaurants (
	res_id INT PRIMARY KEY AUTO_INCREMENT,
	res_name VARCHAR(255),
	image VARCHAR(255),
	description VARCHAR(255)
)
-- Table like_res
CREATE TABLE like_res (
	likes_id INT PRIMARY KEY AUTO_INCREMENT,
	users_id INT,
	res_id INT,
	date_like DATETIME,
	FOREIGN KEY (users_id) REFERENCES users (users_id),
	FOREIGN KEY (res_id) REFERENCES restaurants (res_id)
)
-- Table like_res
CREATE TABLE rate_res (
	rates_id INT PRIMARY KEY AUTO_INCREMENT,
	users_id INT,
	res_id INT,
	amount INT,
	date_rate DATETIME,
	FOREIGN KEY (users_id) REFERENCES users (users_id),
	FOREIGN KEY (res_id) REFERENCES restaurants (res_id)
)
-- Them du lieu

-- Thêm dữ liệu vào bảng users

INSERT INTO users (users_id, full_name, email, pass_word) VALUES
(1, 'Nguyễn Văn A', 'a@example.com', 'password123'),
(2, 'Trần Thị B', 'b@example.com', 'password123'),
(3, 'Lê Văn C', 'c@example.com', 'password123'),
(4, 'Phạm Thị D', 'd@example.com', 'password123'),
(5, 'Hoàng Văn E', 'e@example.com', 'password123'),
(6, 'Nguyễn Văn A', 'a1@example.com', 'password124'),
(7, 'Trần Thị B', 'b1@example.com', 'password125'),
(8, 'Lê Văn C', 'c1@example.com', 'password126'),
(9, 'Phạm Thị D', 'd1@example.com', 'password127'),
(10, 'Hoàng Văn E', 'e1@example.com', 'password128'),
(11, 'Hoàng Văn F', 'f1@example.com', 'password128');

-- Thêm dữ liệu vào bảng food_type
INSERT INTO food_type (type_name) VALUES
('Khai vị'),
('Món chính'),
('Tráng miệng'),
('Nước uống'),
('Salad'),
('Khai vị'),
('Món chính'),
('Súp'),
('Tráng miệng'),
('Salad');

-- Thêm dữ liệu vào bảng foods
INSERT INTO foods (foods_id, foods_name, image, price, description, type_id) VALUES
(1, 'Khoai tây chiên', 'khoaitaychien.jpg', 15000, 'Khoai tây chiên giòn', 1),
(2, 'Bánh mì kẹp', 'banhmi.jpg', 25000, 'Bánh mì kẹp thịt', 2),
(3, 'Coca-Cola', 'coca.jpg', 10000, 'Nước ngọt Coca-Cola', 3),
(4, 'Súp cua', 'supcua.jpg', 40000, 'Súp cua bổ dưỡng', 4),
(5, 'Salad rau', 'salad.jpg', 30000, 'Salad rau xanh tươi', 5),
(6, 'Nước cam', 'nuoccam.jpg', 20000, 'Nước cam ép tươi', 4),
(7, 'Mì Ý', 'miy.jpg', 45000, 'Mì Ý sốt cà chua', 2),
(8, 'Pizza', 'pizza.jpg', 50000, 'Pizza phô mai', 2),
(9, 'Trà sữa', 'trasua.jpg', 30000, 'Trà sữa trân châu', 3),
(10, 'Bánh ngọt', 'banhngot.jpg', 20000, 'Bánh ngọt bơ', 3);


-- Thêm dữ liệu vào bảng orders
INSERT INTO orders (orders_id, users_id, foods_id, amount, code) VALUES
(1, 1, 1, 2, 'ORD001'),
(2, 2, 2, 1, 'ORD002'),
(3, 3, 3, 1, 'ORD003'),
(4, 4, 4, 2, 'ORD004'),
(5, 5, 5, 3, 'ORD005'),
(6, 2, 1, 1, 'ORD001'),
(7, 7, 2, 2, 'ORD002'),
(8, 2, 3, 3, 'ORD003'),
(9, 9, 4, 4, 'ORD004'),
(10, 2, 5, 2, 'ORD005');


-- Thêm dữ liệu vào bảng sub_food
INSERT INTO sub_food (sub_name, sub_price, foods_id) VALUES
('Xúc xích thêm', 7000, 1),
('Phô mai thêm', 5000, 2),
('Xốt BBQ', 5000, 3),
('Thêm topping kem', 3000, 4),
('Thịt xông khói', 10000, 5),
('Nước sốt đặc biệt', 6000, 6),
('Rau sống', 2000, 7),
('Khoai tây nghiền', 8000, 8),
('Thêm trân châu', 4000, 9),
('Thạch trái cây', 3000, 10);

-- Thêm dữ liệu vào bảng restaurants
INSERT INTO restaurants (res_name, image, description) VALUES
('Nhà hàng A', 'nhahang_a.jpg', 'Nhà hàng chuyên món Việt'),
('Nhà hàng B', 'nhahang_b.jpg', 'Nhà hàng chuyên món Á'),
('Nhà hàng C', 'nhahang_c.jpg', 'Nhà hàng chuyên món Âu'),
('Nhà hàng D', 'nhahang_d.jpg', 'Nhà hàng món chay'),
('Nhà hàng E', 'nhahang_e.jpg', 'Nhà hàng lẩu và nướng'),
('Nhà hàng F', 'nhahang_f.jpg', 'Nhà hàng buffet'),
('Nhà hàng G', 'nhahang_g.jpg', 'Nhà hàng món Nhật'),
('Nhà hàng H', 'nhahang_h.jpg', 'Nhà hàng món Hàn'),
('Nhà hàng I', 'nhahang_i.jpg', 'Nhà hàng món Thái'),
('Nhà hàng J', 'nhahang_j.jpg', 'Nhà hàng chuyên hải sản');

-- Thêm dữ liệu vào bảng like_res
INSERT INTO like_res (likes_id, users_id, res_id, date_like) VALUES
(1, 1, 1, '2024-10-01 10:00:00'),
(2, 2, 2, '2024-10-02 11:00:00'),
(3, 3, 3, '2024-10-03 12:00:00'),
(4, 4, 4, '2024-10-04 13:00:00'),
(5, 5, 5, '2024-10-05 14:00:00'),
(6, 6, 3, '2024-10-06 15:00:00'),
(7, 1, 7, '2024-10-07 16:00:00'),
(8, 2, 3, '2024-10-08 17:00:00'),
(9, 2, 9, '2024-10-09 18:00:00'),
(10, 5, 4, '2024-10-10 19:00:00');


-- Thêm dữ liệu vào bảng rate_res
INSERT INTO rate_res (rates_id, users_id, res_id, amount, date_rate) VALUES
(1, 1, 1, 5, '2024-10-01 10:00:00'),
(2, 2, 2, 4, '2024-10-02 11:00:00'),
(3, 3, 3, 3, '2024-10-03 12:00:00'),
(4, 4, 4, 2, '2024-10-04 13:00:00'),
(5, 5, 5, 1, '2024-10-05 14:00:00'),
(6, 6, 6, 5, '2024-10-06 15:00:00'),
(7, 7, 7, 4, '2024-10-07 16:00:00'),
(8, 8, 8, 3, '2024-10-08 17:00:00'),
(9, 9, 9, 2, '2024-10-09 18:00:00'),
(10, 10, 10, 1, '2024-10-10 19:00:00');



-- Tìm 5 người đã like nhà hàng nhiều nhất.


SELECT COUNT(like_res.users_id) AS "So lan like", users.users_id, users.full_name
FROM like_res
INNER JOIN users on like_res.users_id = users.users_id
GROUP BY like_res.users_id
ORDER BY `So lan like` DESC
LIMIT 5

-- Tìm 2 nhà hàng có lượt like nhiều nhất

SELECT COUNT(restaurants.res_id) AS "So lan like hha hang", restaurants.res_id, restaurants.res_name, restaurants.description
FROM restaurants
INNER JOIN like_res ON restaurants.res_id = like_res.res_id
GROUP BY restaurants.res_id 
ORDER BY `So lan like hha hang` DESC
LIMIT 2

-- Tìm người đã đặt hàng nhiều nhất.
SELECT COUNT(users.users_id) AS "So luong orders",users.users_id, users.full_name 
FROM users
INNER JOIN orders on users.users_id = orders.users_id
GROUP BY users.users_id
ORDER BY `So luong orders` DESC 
LIMIT 1

-- Tim nguoi dung khong hoat dong trong he thong, khong dat hang, khong like, khong danh gia nha hang 

SELECT users.users_id, users.full_name 
FROM users
LEFT JOIN orders on orders.users_id = users.users_id
LEFT JOIN like_res on like_res.users_id = users.users_id
LEFT JOIN rate_res on rate_res.users_id = users.users_id
WHERE 
orders.users_id is NULL AND 
like_res.users_id is NULL AND
rate_res.users_id is NULL