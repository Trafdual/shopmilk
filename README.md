# ShopMilk - Spring Boot Application

Dự án quản lý bán sữa được xây dựng trên nền tảng Spring Boot.

## 📋 Yêu cầu hệ thống

- **Java JDK 11**
- **MySQL Server**
- **Maven** (Đã đi kèm trong dự án qua `mvnw`)

## 🛠 Hướng dẫn cài đặt và chạy dự án

### 1. Cấu hình Cơ sở dữ liệu

- Mở MySQL (XAMPP, MySQL Workbench hoặc Command Line).
- Tạo một database mới tên là `shopmilk`:
  ```sql
  CREATE DATABASE shopmilk;
  ```
- Mở file `src/main/resources/application.properties` để kiểm tra/chỉnh sửa cấu hình kết nối:
  - `spring.datasource.username`: Tài khoản MySQL (mặc định là `root`).
  - `spring.datasource.password`: Mật khẩu MySQL (mặc định để trống).

### 2. Chạy ứng dụng

Mở terminal tại thư mục gốc của dự án và chạy lệnh tương ứng:

- **Trên PowerShell hoặc Terminal VS Code:**
  ```powershell
  ./mvnw spring-boot:run
  ```
- **Trên Command Prompt (CMD):**
  ```cmd
  mvnw.cmd spring-boot:run
  ```

### 3. Truy cập ứng dụng

Sau khi ứng dụng khởi chạy thành công, mở trình duyệt và truy cập:

- **URL:** [http://localhost:9090](http://localhost:9090)

## 🏗 Cấu trúc dự án chính

- `src/main/java`: Mã nguồn Java (Controller, Service, Repository, Entity).
- `src/main/resources`: File cấu hình và tài nguyên tĩnh.
- `src/main/webapp`: Giao diện người dùng (JSP).

---

**Lưu ý:** Nếu bạn thay đổi cấu trúc database, Hibernate sẽ tự động cập nhật bảng nhờ cấu hình `spring.jpa.hibernate.ddl-auto=update`.
