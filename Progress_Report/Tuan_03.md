# Báo cáo tiến độ - Tuần 3

**Họ và tên:** Trương Thanh Duy  

**MSSV:** DK25TTC2 - 170125087  

**Dự án:** Xây dựng website đặt dịch vụ sửa chữa nhà cửa (ASP.NET)  


---

## 1. Công việc đã hoàn thành

- Tạo và chạy thành công Migration đầu tiên (`InitialCreate`).
- Cấu hình ASP.NET Core Identity với 3 roles: Admin, Staff, Customer.
- Xây dựng AccountController với các action: Register, Login, Logout.
- Tạo ViewModels: RegisterViewModel, LoginViewModel.
- Thiết kế giao diện trang đăng ký và đăng nhập với Bootstrap 5.3.
- Viết Seed Data tạo tài khoản Admin mặc định.
- Tạo trang chủ (Home/Index) với giao diện responsive.

---

## 2. Kế hoạch tuần tiếp theo

- Xây dựng BookingController với chức năng tạo đơn đặt lịch.
- Tạo form đặt lịch với validation.
- Triển khai chức năng tra cứu đơn hàng bằng số điện thoại.
- Xây dựng trang lịch sử đơn hàng cho khách hàng.
- Tạo layout chung (_Layout.cshtml) với navbar và footer.

---

## 3. Khó khăn gặp phải

- Gặp lỗi khi cấu hình Identity options (password requirements).
- Chưa hiểu rõ về Cookie Authentication và Session.
- Validation ở client-side và server-side còn chưa đồng bộ.

---

## 4. Ghi chú

- Đã học được cách sử dụng UserManager và SignInManager.
- Cần tìm hiểu thêm về Authorization và [Authorize] attribute.
- Sẽ tạo tài liệu hướng dẫn sử dụng cho người dùng cuối.
- Còn 1 số lỗi chưa biết cách fix, đang tra cứu từ các trang về asp.net để tìm cách fix
