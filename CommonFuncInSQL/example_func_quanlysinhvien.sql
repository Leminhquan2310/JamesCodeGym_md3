use quanlysinhvien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT * FROM subject WHERE Credit = (SELECT MAX(Credit) FROM subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT * FROM subject JOIN mark ON subject.SubID = mark.SubID WHERE mark.Mark = (SELECT MAX(Mark) FROM mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT s.StudentID, s.StudentName, s.Address, s.Phone, s.Status, s.ClassID, AVG(m.Mark) AS AvgMark FROM student s
JOIN mark m ON s.StudentID = m.StudentID 
GROUP BY m.StudentID 
ORDER BY AVG(m.Mark) DESC;