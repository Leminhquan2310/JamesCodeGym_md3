use quanlybanhang;

INSERT INTO customer values (1, "Minh Quan", 10);
INSERT INTO customer values (2, "Ngoc Oanh", 20);
INSERT INTO customer values (3, "Hong Ha", 50);

INSERT INTO `order` values (1, 1, '2006-03-21', null);
INSERT INTO `order` values (2, 2, '2006-03-23', null);
INSERT INTO `order` values (3, 1, '2006-03-16', null);

INSERT INTO product values (1, "May Giat", 3);
INSERT INTO product values (2, "Tu Lanh", 5);
INSERT INTO product values (3, "Dieu Hoa", 7);
INSERT INTO product values (4, "Quat", 1);
INSERT INTO product values (5, "Bep Dien", 2);

INSERT INTO oderdetail values (1, 1, 3),(1, 3, 7),(1, 4, 2),(2, 1, 1),(3, 1, 8),(2, 5, 4),(2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT oID, oDate, oTotalPrice FROM `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT C.cID, O.oID, C.cName, OD.odQTY, P.pName FROM customer C 
JOIN `order` O ON C.cID = O.cID 
JOIN orderdetail OD ON O.oID = OD.oID 
JOIN product P ON OD.pID = P.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT C.cName FROM customer C LEFT JOIN `order` O ON C.cID = O.cID WHERE O.cID IS null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng
--  giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT O.oID AS MaHoaDon, O.oDate AS NgayBan, SUM(OD.odQTY * P.pPrice) AS GiaTien FROM `order` O 
JOIN orderdetail OD ON O.oID = OD.oID
JOIN product P ON OD.pID = P.pID 
GROUP BY O.oID, O.oDate;