- Các nguyên tắc, pattern được áp dụng trong dự án:
    + Nguyên tắc SOLID:
        * Nguyên tắc đơn trách nhiệm (SRP): Một class chỉ có một trách nhiệm duy nhất và không phụ thuộc vào các class khác.
        * Nguyên tắc thay thế Liskov (LSP): Các đối tượng UserDetailImp được kế thừa từ lớp UserDetail, trong dự án em đã kết hợp cả 2 lại thành 1
        * Nguyên tắc phụ thuộc đảo ngược (DIP): Các module phụ thuộc vào các interface hoặc abstract class, không phải các class cụ thể
    
- Cấu trúc code:
    + Model MVC:
        * Controller: Đại diện cho logic điều khiển và điều phối hoạt động giữa model và view
        * Model:Đại diện cho dữ liệu và quản lý các thao tác liên quan đến dữ liệu
        * Service: xử lý các yêu cầu từ web
        * View: là các file HTML

- Các bước để chạy chương trình trên local:
    + Tải và cài đặt JDK và Apache Maven
    + Mở IDE và source code
    + Sử dụng Docker để kết nối đến server
    + Sử dụng DBeaver để kết nối đến database
    + Mở script trong Dbeaver và chạy file product.sql trong path \JavaTech_Midterm_Hk2\demo\src\main
    + Chạy IDE và mở localhost:/8080 trong trình duyệt.