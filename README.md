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

- Ảnh Endpoint mapping:
    + ![image](https://user-images.githubusercontent.com/86221584/230787121-460a95d9-ccb9-4bbc-8eac-06cbad0ec2ff.png)

- Ảnh database:
    + Table Product: ![image](https://user-images.githubusercontent.com/86221584/230787253-b81724d1-6cea-4b58-9788-cf3725788936.png)
    + Table Cart: [image](https://user-images.githubusercontent.com/86221584/230787467-3ea8430a-56b8-4158-91d9-5bc6108c1771.png). Chứa ID khi thêm sản phẩm vào. Nó sẽ gồm 2 bảng con: 
        * Table cart_product_list: ![image](https://user-images.githubusercontent.com/86221584/230787520-a4522c32-e1a6-4cdb-b8d7-a7458761493c.png). Chứa ID của cart và ID của sản phẩm
        * Table cart_quantity: ![image](https://user-images.githubusercontent.com/86221584/230787542-8a73cb90-be2d-4cbb-8b77-c6f9dd287146.png). Chứa số lượng và ID cart
    + Table receipt: ![image](https://user-images.githubusercontent.com/86221584/230787585-68271a84-bacb-4e72-9050-fc4a6a76ed76.png). Chứa thông tin user được điền ở trang payment, khi nhấn nút thanh toán sẽ lấy thông tin của user lưu xuống db

- Ảnh Docker:
    + ![image](https://user-images.githubusercontent.com/86221584/230787694-1b8d9f0a-893d-4745-bd9c-c4e5590ca912.png)


