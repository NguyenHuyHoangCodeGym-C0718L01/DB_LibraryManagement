Use qlythuvien;
SELECT * FROM student;

SELECT * FROM borroworder;

SELECT * FROM book;

SELECT * FROM category;

SELECT * 
FROM book
inner join category on book.id_loai = category.id
WHERE book.id = 1;

SELECT book.id_loai, category.id
FROM book
left join category on book.id_loai = category.id;

SELECT borroworder.id_sinhvien, student.id
FROM borroworder
right join student on borroworder.id_sinhvien = student.id;

UPDATE student SET tensinhvien = 'cuong'
WHERE student.id = 4; 

SELECT *
FROM student
WHERE student.id = 4; 