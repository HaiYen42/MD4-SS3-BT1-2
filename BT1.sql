use quanlysinhvien;
/*Hiển thị tất cả các sinh viên có tên bắt đầu ký tự 'h' */
select * from student 
where StudentName like "h%";
/*Hiển thị các thông tin lớp học có thời gian bắt đầu tháng 12 */
select * from class
where StartDate like "%-12-%";
select * from class
where month(StartDate) = 12;
/*Hiển thị các thông tin môn học có credit 3-5*/
select * from subject
where credit between 3 and 5;
/*Thay đổi mã lớp ClassId của sv tên Hùng là 1*/
select * from student;
update student 
set ClassId =1
where StudentName= "Hung";
/*Hiển thị các thông tin StudentName, SubName, Mark--> sắp xếp theo 
mark giảm dần nếu trùng lặp ss tên tăng dần */
select student.StudentName, subject.SubName, mark.Mark 
from mark 
inner join student on student.StudentId = mark.StudentId
inner join subject on subject.SubId = mark.SubId
order by mark desc, StudentName asc;


