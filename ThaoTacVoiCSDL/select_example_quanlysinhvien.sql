use quanlysinhvien;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT * FROM student WHERE StudentName LIKE "h%";

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT * FROM class WHERE StartDate LIKE "_____12%";

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
SELECT * FROM subject WHERE Credit >= 3 AND Credit <= 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
SET SQL_SAFE_UPDATES = 0;
UPDATE student SET ClassID = 2 WHERE StudentName = "Hung";
SET SQL_SAFE_UPDATES = 1;

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT S.StudentName, Sub.SubName, M.Mark FROM student S JOIN mark M ON S.StudentID = M.StudentID JOIN subject Sub ON M.SubID = Sub.SubID ORDER BY Mark DESC, StudentName;