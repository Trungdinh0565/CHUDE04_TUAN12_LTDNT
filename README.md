# CHỦ ĐỀ 04 — THIẾT KẾ GIAO DIỆN ĐA PHONG CÁCH VÀ NGUYÊN TẮC UX

## 1. Giới thiệu

Dự án được thực hiện trong khuôn khổ học phần **Lập trình đa nền tảng**, nhằm tìm hiểu các hệ thống thiết kế giao diện trong Flutter và vận dụng những nguyên tắc UX/UI vào xây dựng ứng dụng.

Nội dung lý thuyết tập trung vào hai hệ thống thiết kế phổ biến là **Material Design** và **Cupertino**. 
Phần demo sử dụng Material Design để xây dựng giao diện hồ sơ cá nhân và cài đặt, minh họa cách tổ chức widget, tùy chỉnh giao diện sáng/tối và xử lý tương tác người dùng.

### Nội dung chính

- Tìm hiểu và so sánh Material Design với Cupertino.
- Xây dựng giao diện theo Material Design.
- Tổ chức giao diện bằng các widget có khả năng tái sử dụng.
- Tùy chỉnh giao diện Light Mode và Dark Mode.
- Áp dụng các nguyên tắc UX cơ bản: tính nhất quán, phản hồi tương tác, khả năng đọc và khả năng tiếp cận.

## 2. Công nghệ sử dụng

- **Flutter:** Framework phát triển giao diện ứng dụng.
- **Dart:** Ngôn ngữ lập trình sử dụng trong Flutter.
- **Material Design:** Hệ thống thiết kế được áp dụng trong phần demo.
- **Visual Studio Code:** Môi trường phát triển.
- **Git và GitHub:** Quản lý mã nguồn và phối hợp làm việc nhóm.

## 3. Cây thư mục

```text
CHUDE04_TUAN12_LTDNT/
├── lib/
│   ├── core/
│   │   └── theme/
│   │       └── app_theme.dart
│   │
│   ├── presentation/
│   │   ├── screens/
│   │   │   └── profile_screen.dart
│   │   │
│   │   └── widgets/
│   │       ├── setting_item.dart
│   │       └── profile_header.dart
│   │
│   └── main.dart
│
├── android/
├── ios/
├── web/
├── windows/
├── linux/
├── macos/
├── test/
├── analysis_options.yaml
├── pubspec.yaml
├── pubspec.lock
├── .gitignore
└── README.md
```

### Chức năng các thành phần chính

| Tệp / thư mục | Chức năng |
|---|---|
| `main.dart` | Khởi tạo ứng dụng, cấu hình theme và quản lý trạng thái giao diện sáng/tối. |
| `core/theme/app_theme.dart` | Khai báo cấu hình giao diện, màu sắc và kiểu chữ cho Light Mode và Dark Mode. |
| `presentation/screens/profile_screen.dart` | Xây dựng màn hình hồ sơ cá nhân và cài đặt. |
| `presentation/widgets/setting_item.dart` | Widget tái sử dụng để hiển thị từng mục cài đặt. |
| `presentation/widgets/profile_header.dart` | Widget hiển thị thông tin hồ sơ cá nhân. |
| `pubspec.yaml` | Khai báo thông tin dự án, môi trường SDK và các dependencies. |
| `test/` | Chứa các bài kiểm thử của dự án. |

## 4. Hướng dẫn cài đặt và chạy

### 4.1. Yêu cầu môi trường

Cần chuẩn bị:

- Flutter SDK.
- Dart SDK đi kèm Flutter.
- Visual Studio Code hoặc Android Studio.
- Android Emulator hoặc thiết bị Android đã bật USB Debugging.

Kiểm tra môi trường bằng lệnh:

```bash
flutter doctor
```

### 4.2. Tải mã nguồn

Mở Terminal và chạy:

```bash
git clone https://github.com/Trungdinh0565/CHUDE04_TUAN12_LTDNT.git
```

Di chuyển vào thư mục dự án:

```bash
cd CHUDE04_TUAN12_LTDNT
```

### 4.3. Cài đặt dependencies

Chạy lệnh:

```bash
flutter pub get
```

Lệnh này tải các dependencies được khai báo trong `pubspec.yaml`.

### 4.4. Kiểm tra thiết bị

Liệt kê các thiết bị có thể chạy ứng dụng:

```bash
flutter devices
```

Nếu sử dụng Android Emulator, hãy khởi động máy ảo trước khi chạy ứng dụng.

### 4.5. Khởi chạy ứng dụng

Chạy lệnh:

```bash
flutter run
```

Sau khi biên dịch thành công, ứng dụng sẽ được khởi chạy trên thiết bị đã chọn.

## 5. Sinh viên thực hiện
- Đinh Tiến Trung
- Lê Văn Nhật
