# Website Dịch Vụ Sửa Chữa Nhà Cửa - Trương Thanh Duy

Website đặt lịch sửa chữa nhà cửa trực tuyến, built với **ASP.NET Core 9.0 MVC**, Entity Framework Core và SQL Server.

---

## Máy cần cài gì

- **.NET 9.0 SDK** - Tải tại: https://dotnet.microsoft.com/download/dotnet/9.0
- **SQL Server** - Dùng SQL Server Express hoặc LocalDB là đủ

---

## Cách chạy (Click chạy ngay)

Trong thư mục dự án, có 2 file script:

| File | Dùng khi |
|------|----------|
| `Chay-Du-An.bat` | Máy đã từng chạy, có database rồi |
| `Chay-Day-Du-Chu.bat` | Máy mới, lần đầu chạy |

Nhấn đúp vào file phù hợp → xong.

---
## Cách chạy bằng lệnh (PowerShell)

### Bước 1: Cài .NET SDK
Tải và cài .NET 9.0 SDK từ link trên, chọn phiên bản **Windows** → **x64**.

### Bước 2: Sửa đường dẫn database
Mở file `src/TruongThanhDuy/WebsiteSuaChuaNha/appsettings.json` bằng Notepad hoặc VS Code.
Tìm dòng `Server=...`, sửa thành server SQL trên máy bạn:

| Loại SQL Server | Server name |
|---|---|
| LocalDB | `(localdb)\\mssqllocaldb` |
| SQL Server Express | `localhost\\SQLEXPRESS` |
| SQL Server đầy đủ | `localhost` |

Ví dụ nếu dùng SQL Server Express:
```json
"DefaultConnection": "Server=localhost\\SQLEXPRESS;Database=WebsiteDichVuSuaNha;Trusted_Connection=True;MultipleActiveResultSets=true;TrustServerCertificate=True"
```

### Bước 3: Mở PowerShell
Nhấn `Win + X` → chọn **Windows PowerShell**

### Bước 4: Chạy lệnh
```powershell
cd D:\ĐỒ ÁN\duy\ASPNET-DK25TTC2-truongthanhduy-main\...\src\TruongThanhDuy\WebsiteSuaChuaNha
dotnet restore
dotnet ef database update
dotnet run
```

### Bước 5: Mở trình duyệt
Truy cập: **http://localhost:5000**

---

## Tài khoản đăng nhập

| Trường | Giá trị |
|---------|---------|
| Email | `admin@suachuanha.vn` |
| Password | `Admin@123` |

---

## Cấu trúc thư mục

```
ASPNET-DK25TTC2-truongthanhduy-main/
├── Chay-Du-An.bat        # Script chạy nhanh
├── Chay-Day-Du-Chu.bat   # Script cài đặt + chạy
├── Progress - Report/    # Báo cáo tiến độ
├── src/TruongThanhDuy/WebsiteSuaChuaNha/
│   ├── Controllers/      # Xử lý logic
│   ├── Models/           # Cấu trúc dữ liệu
│   ├── Views/            # Giao diện
│   └── appsettings.json # Cấu hình database
└── README.md             # File này
```

---

## Tính năng chính

- **Khách hàng**: Đặt lịch sửa chữa, tra cứu đơn, xem lịch sử, đánh giá 1-5 sao
- **Admin**: Dashboard thống kê, quản lý đơn hàng, quản lý khách hàng, quản lý bảng giá, quản lý đánh giá
- **3 vai trò**: Admin, Staff, Customer

---

## Ghi chú quan trọng

- Đổi mật khẩu admin mặc định sau khi deploy
- Dữ liệu mẫu (5 đơn hàng, 2 đánh giá) được tạo tự động khi chạy lần đầu
- File SQL tạo database nằm trong thư mục `database/`

---

**Sinh viên**: Trương Thanh Duy | **Lớp**: DK25TTC2

---

## 📖 Giới thiệu

**Trương Thanh Duy** là một hệ thống đặt lịch sửa chữa nhà cửa trực tuyến được xây dựng bằng **ASP.NET Core 9.0 MVC**. Ứng dụng kết nối khách hàng có nhu cầu sửa chữa (điện, nước, sơn sửa, chống thấm, v.v.) với đội ngũ thợ lành nghề, giúp quá trình đặt lịch và quản lý dịch vụ trở nên dễ dàng và hiệu quả.

### 🎯 Mục tiêu dự án
- Tạo nền tảng kết nối khách hàng với thợ sửa chữa chuyên nghiệp
- Đơn giản hóa quy trình đặt lịch và quản lý đơn hàng
- Xây dựng hệ thống đánh giá minh bạch để nâng cao chất lượng dịch vụ
- Cung cấp công cụ quản trị toàn diện cho admin

---

## ✨ Tính năng nổi bật

### 👥 Dành cho Khách hàng
- **🗓️ Đặt lịch sửa chữa** – Chọn loại dịch vụ, nhập địa chỉ và mô tả sự cố
- **🔎 Tra cứu đơn hàng** – Tra cứu trạng thái đơn bằng số điện thoại
- **📱 Lịch sử đơn hàng** – Xem tất cả đơn đã đặt (yêu cầu đăng nhập)
- **⭐ Đánh giá dịch vụ** – Đánh giá 1-5 sao và để lại nhận xét sau khi hoàn thành
- **👤 Quản lý tài khoản** – Đăng ký, đăng nhập, cập nhật thông tin cá nhân

### 🔧 Dành cho Admin/Staff
- **📊 Dashboard thống kê** – Tổng quan số liệu: tổng đơn, đơn mới, đang xử lý, hoàn thành
- **🛠️ Quản lý đơn hàng** – Xem chi tiết, cập nhật trạng thái, phân công thợ, ghi chú
- **👥 Quản lý khách hàng** – Xem danh sách khách hàng và lịch sử đặt lịch
- **💰 Quản lý bảng giá** – Thiết lập phí dịch vụ cơ bản
- **⭐ Quản lý đánh giá** – Xem, phản hồi, ẩn/hiện đánh giá công khai

### 🔐 Bảo mật & Phân quyền
- **ASP.NET Core Identity** – Xác thực và phân quyền người dùng
- **3 vai trò**: Admin, Staff, Customer
- **CSRF Protection** – Anti-forgery token cho tất cả form
- **Role-based Authorization** – Phân quyền truy cập theo vai trò

---

## 🛠️ Công nghệ sử dụng

| Thành phần | Công nghệ |
|------------|-----------|
| **Backend Framework** | ASP.NET Core 9.0 MVC |
| **Database** | Microsoft SQL Server (LocalDB) |
| **ORM** | Entity Framework Core 9.0 |
| **Authentication** | ASP.NET Core Identity |
| **Frontend** | HTML5, CSS3, JavaScript (Vanilla) |
| **UI Framework** | Bootstrap 5.3 |
| **Font** | Google Fonts - Inter (Vietnamese support) |
| **Icons** | Unicode Emoji |

### 🎨 Thiết kế UI
- **Màu chủ đạo**: Indigo `#4F46E5`
- **Màu phụ**: Emerald Green `#10B981`
- **Font chữ**: Inter (Google Fonts với hỗ trợ tiếng Việt)
- **Hiệu ứng**: Fade-in animations, smooth transitions, hover effects
- **Responsive**: Tối ưu cho Desktop, Tablet và Mobile

---

## 📂 Cấu trúc dự án

```
WebsiteDichVuSuaNha/
│
├── Controllers/
│   ├── HomeController.cs          # Trang chủ
│   ├── BookingController.cs       # Đặt lịch, tra cứu, lịch sử
│   ├── ReviewController.cs        # Tạo và xem đánh giá
│   ├── AdminController.cs         # Quản trị (dashboard, đơn hàng, khách hàng, bảng giá, đánh giá)
│   └── AccountController.cs       # Đăng ký, đăng nhập, quản lý tài khoản
│
├── Models/
│   ├── Booking.cs                 # Model đơn đặt lịch
│   ├── Review.cs                  # Model đánh giá
│   ├── PricingSetting.cs          # Model bảng giá
│   └── ApplicationUser.cs         # Model người dùng (kế thừa IdentityUser)
│
├── ViewModels/
│   ├── CreateReviewViewModel.cs   # ViewModel tạo đánh giá
│   ├── LoginViewModel.cs          # ViewModel đăng nhập
│   └── RegisterViewModel.cs       # ViewModel đăng ký
│
├── Data/
│   └── ApplicationDbContext.cs    # EF Core DbContext + seed data
│
├── Views/
│   ├── Home/                      # Views trang chủ
│   ├── Booking/                   # Views đặt lịch
│   ├── Review/                    # Views đánh giá
│   ├── Admin/                     # Views quản trị
│   ├── Account/                   # Views tài khoản
│   └── Shared/                    # Layout và partial views
│
├── wwwroot/
│   ├── css/                       # CSS files
│   ├── js/                        # JavaScript files
│   └── lib/                       # Bootstrap, jQuery
│
├── Program.cs                     # Entry point, cấu hình services
├── appsettings.json              # Cấu hình ứng dụng
└── (Database được quản lý bởi SQL Server LocalDB)
```

---

## 🗂️ Database Schema

### Bảng chính

#### **Bookings** (Đơn đặt lịch)
| Cột | Kiểu | Mô tả |
|-----|------|-------|
| Id | int | Primary key |
| CustomerName | string | Tên khách hàng |
| PhoneNumber | string | Số điện thoại |
| ServiceDate | DateTime | Ngày hẹn sửa chữa |
| Address | string | Địa chỉ sửa chữa |
| ServiceType | string | Loại dịch vụ (Điện/Nước/Sơn/Tổng hợp) |
| EstimatedCost | decimal | Ước tính chi phí |
| Notes | string | Ghi chú khách hàng |
| AdminNotes | string | Ghi chú admin |
| Status | string | Trạng thái (Mới/Đã xác nhận/Đang xử lý/Hoàn thành/Hủy) |
| CreatedAt | DateTime | Ngày tạo |
| UserId | string | Foreign key đến AspNetUsers |

#### **Reviews** (Đánh giá)
| Cột | Kiểu | Mô tả |
|-----|------|-------|
| Id | int | Primary key |
| BookingId | int | Foreign key đến Bookings |
| UserId | string | Foreign key đến AspNetUsers |
| Rating | int | Số sao (1-5) |
| Comment | string | Nội dung đánh giá |
| AdminReply | string | Phản hồi từ admin |
| CreatedAt | DateTime | Ngày tạo |
| RepliedAt | DateTime | Ngày admin phản hồi |
| IsPublic | bool | Hiển thị công khai hay không |

#### **PricingSettings** (Bảng giá)
| Cột | Kiểu | Mô tả |
|-----|------|-------|
| Id | int | Primary key |
| BaseServiceFee | decimal | Phí dịch vụ cơ bản |
| UpdatedAt | DateTime | Ngày cập nhật |

#### **AspNetUsers** (Người dùng - Identity)
Kế thừa từ IdentityUser với các trường bổ sung:
- FullName (string)
- CreatedAt (DateTime)
- LastLoginAt (DateTime)

---

## 🚀 Hướng dẫn cài đặt và chạy

### 1️⃣ Yêu cầu hệ thống
- **.NET 9.0 SDK** hoặc mới hơn
- **Visual Studio 2022** hoặc **VS Code** (tùy chọn)
- **Git** (để clone repository)

### 2️⃣ Clone repository
```bash
git clone https://github.com/your-username/WebsiteDichVuSuaNha.git
cd WebsiteDichVuSuaNha
```

### 3️⃣ Restore dependencies
```bash
dotnet restore
```

### 4️⃣ Build project
```bash
dotnet build
```

### 5️⃣ Chạy ứng dụng
```bash
dotnet run
```

Ứng dụng sẽ chạy tại: **http://localhost:5216**

### 6️⃣ Dữ liệu mẫu (Demo Data)
Khi chạy lần đầu, hệ thống sẽ tự động tạo:
- **1 tài khoản Admin**: 
  - Email: `admin@suachuanha.vn`
  - Password: `Admin@123`
- **2 tài khoản Customer** để demo
- **5 đơn đặt lịch mẫu** với các trạng thái khác nhau
- **2 đánh giá mẫu** cho các đơn đã hoàn thành

---

## 📋 API Routes & Endpoints

### 🏠 Public Routes
| Route | Method | Mô tả |
|-------|--------|-------|
| `/` | GET | Trang chủ |
| `/Booking/Create` | GET/POST | Tạo đơn đặt lịch |
| `/Booking/Success/{id}` | GET | Trang xác nhận đặt lịch thành công |
| `/Booking/Track` | GET/POST | Tra cứu đơn hàng bằng SĐT |
| `/Account/Login` | GET/POST | Đăng nhập |
| `/Account/Register` | GET/POST | Đăng ký tài khoản |

### 🔒 Authenticated Routes
| Route | Method | Role | Mô tả |
|-------|--------|------|-------|
| `/Booking/History` | GET | Customer | Lịch sử đơn hàng |
| `/Review/Create/{bookingId}` | GET/POST | Customer | Tạo đánh giá |
| `/Review/MyReviews` | GET | Customer | Đánh giá của tôi |
| `/Account/Profile` | GET/POST | All | Thông tin cá nhân |

### 👨‍💼 Admin Routes
| Route | Method | Mô tả |
|-------|--------|-------|
| `/Admin/Index` | GET | Dashboard thống kê |
| `/Admin/Bookings` | GET | Danh sách tất cả đơn hàng |
| `/Admin/BookingDetails/{id}` | GET | Chi tiết đơn hàng |
| `/Admin/UpdateStatus` | POST | Cập nhật trạng thái đơn |
| `/Admin/Customers` | GET | Danh sách khách hàng |
| `/Admin/Pricing` | GET/POST | Quản lý bảng giá |
| `/Admin/Reviews` | GET | Danh sách đánh giá |
| `/Admin/ReviewDetails/{id}` | GET | Chi tiết đánh giá |
| `/Admin/ReplyReview` | POST | Phản hồi đánh giá |
| `/Admin/ToggleReviewVisibility` | POST | Ẩn/hiện đánh giá |

---

## 🎯 Use Cases

### Use Case 1: Khách hàng đặt lịch sửa chữa
1. Khách truy cập trang chủ
2. Click "Đặt Lịch Sửa Chữa"
3. Điền form: Họ tên, SĐT, Ngày hẹn, Địa chỉ, Loại dịch vụ, Mô tả sự cố
4. Xem phí dịch vụ cơ bản
5. Xác nhận đặt lịch
6. Nhận thông báo thành công với mã đơn hàng

### Use Case 2: Khách hàng tra cứu đơn
1. Click "Tra Cứu"
2. Nhập số điện thoại
3. Xem danh sách đơn hàng và trạng thái

### Use Case 3: Admin quản lý đơn hàng
1. Đăng nhập với tài khoản admin
2. Vào Dashboard xem tổng quan
3. Click "Quản Lý Đơn Hàng"
4. Chọn đơn cần xử lý
5. Cập nhật trạng thái, ghi chú, phân công thợ
6. Lưu thay đổi

### Use Case 4: Khách hàng đánh giá dịch vụ
1. Đăng nhập
2. Vào "Lịch Sử Đơn Hàng"
3. Chọn đơn đã hoàn thành
4. Click "Đánh Giá"
5. Chọn số sao và viết nhận xét
6. Gửi đánh giá

---

## 📝 Ghi chú quan trọng

### ⚠️ Lưu ý bảo mật
- Đổi mật khẩu admin mặc định sau khi deploy
- Cấu hình HTTPS cho production
- Bảo vệ connection string trong production
- Sử dụng secrets manager cho thông tin nhạy cảm

### 🔄 Roadmap tương lai
- [ ] Tích hợp thanh toán online (VNPay, MoMo)
- [ ] Gửi email/SMS thông báo khi đơn thay đổi trạng thái
- [ ] Upload hình ảnh sự cố khi đặt lịch
- [ ] Hệ thống chat trực tiếp với thợ
- [ ] Ứng dụng mobile (Flutter/React Native)
- [ ] Tích hợp Google Maps để tính khoảng cách
- [ ] Hệ thống báo cáo và thống kê nâng cao

---

## 👥 Đóng góp

Mọi đóng góp đều được hoan nghênh! Vui lòng:
1. Fork repository
2. Tạo branch mới (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Tạo Pull Request

---

## 📄 License

Dự án này được phát triển cho mục đích học tập và demo.

---

## 📞 Liên hệ

**Sinh viên**: Trương Thanh Duy  
**Lớp**: DK25TTC2  



---

## 🙏 Cảm ơn

Cảm ơn đã quan tâm đến dự án! Nếu bạn thấy hữu ích, hãy cho một ⭐ trên GitHub!
