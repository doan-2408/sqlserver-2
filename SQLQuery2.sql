use QLDA
--lấy tất cả thông tin nhân viên nữ
--b1 xác định bảng cần dùng 
--xác định dữ liệu cần lấy 
--xác định điều kiện
select * from NHANVIEN where phai like N'nữ'
--Lấy ra thông tin phòng ban có số thành viên >2
select*from nhanvien;
select PHG, count(MANV) as'số lượng thành viên' from NHANVIEN
group by PHG
having count (MANV) >2;
--Lấy thông tin mã nhân viên, tên nhân viên, mã phòng ban, tên phòng ban
select MANV, TENNV, PHG, TENPHG from NHANVIEN 
join PHONGBAN on NHANVIEN.PHG =PHONGBAN.MAPHG
