USE quanlysinhvien;

-- Hiển thị danh sách tất cả các học viên
SELECT * FROM student;

-- Hiển thị danh sách các học viên đang theo học.
SELECT * FROM student WHERE Status = true;

-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ.
SELECT * FROM subject WHERE Credit < 10;

-- Hiển thị danh sách học viên lớp A1
SELECT S.StudentID, S.StudentName, C.ClassName FROM student S JOIN class C ON S.ClassID = C.ClassID WHERE C.ClassName = "A1";

-- Hiển thị điểm môn CF của các học viên.
SELECT S.StudentID, S.StudentName, Sub.SubName, M.Mark FROM student S JOIN mark M ON S.StudentID = M.StudentID JOIN subject Sub ON M.SubID = Sub.SubID WHERE Sub.SubName = "CF";
