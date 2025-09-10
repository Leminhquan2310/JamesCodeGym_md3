use quanlysinhvien;

SELECT Address, COUNT(*) AS "Số lượng sinh viên" FROM student GROUP BY Address;

SELECT S.StudentID, S.StudentName, AVG(M.Mark) AS "Điểm trung bình" FROM student S JOIN mark M ON S.StudentID = M.StudentID GROUP BY S.StudentID;

SELECT S.StudentID, S.StudentName, AVG(M.Mark) AS "Điểm trung bình" FROM student S 
JOIN mark M ON S.StudentID = M.StudentID 
GROUP BY S.StudentID
HAVING AVG(M.Mark) > 15;

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(M.Mark) >= ALL (SELECT AVG(Mark) FROM mark GROUP BY mark.StudentID);
