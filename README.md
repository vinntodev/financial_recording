# Aplikasi Keuangan (Financial Management App)

Aplikasi manajemen keuangan pribadi yang dibangun dengan Flutter untuk membantu pengguna melacak pendapatan dan pengeluaran mereka dengan mudah.

##  Fitur Utama

- **Dashboard Keuangan**: Tampilan ringkasan pendapatan dan pengeluaran
- **Manajemen Transaksi**: Tambah, edit, dan hapus transaksi keuangan
- **Kategori Transaksi**: Kelola kategori untuk pendapatan dan pengeluaran
- **Kalender Interaktif**: Navigasi berdasarkan tanggal untuk melihat transaksi
- **Database Lokal**: Penyimpanan data menggunakan SQLite dengan Drift ORM

##  Teknologi yang Digunakan

- **Flutter**: Framework UI cross-platform
- **Drift**: ORM untuk database SQLite
- **Google Fonts**: Typography yang menarik
- **Calendar AppBar**: Komponen kalender untuk navigasi tanggal
- **Intl**: Formatting tanggal dan mata uang

##  Instalasi dan Setup

### Prerequisites

- Flutter SDK (>=3.1.4)
- Dart SDK
- Android Studio / VS Code
- Android SDK (untuk Android)
- Xcode (untuk iOS - hanya di macOS)

##  Struktur Aplikasi

### Halaman Utama
- **Home Page**: Dashboard dengan ringkasan keuangan dan daftar transaksi
- **Category Page**: Manajemen kategori pendapatan dan pengeluaran

### Model Data
- **Transaction**: Model untuk data transaksi keuangan
- **Category**: Model untuk kategori transaksi
- **Database**: Konfigurasi database SQLite dengan Drift

### Fitur Navigasi
- **Bottom Navigation**: Switch antara Home dan Category
- **Calendar Navigation**: Pilih tanggal untuk melihat transaksi
- **Floating Action Button**: Tambah transaksi baru

##  UI/UX Features

- **Material Design**: Menggunakan Material Design components
- **Responsive Layout**: Tampilan yang responsif untuk berbagai ukuran layar
- **Color Coding**: 
  - Hijau untuk pendapatan (Income)
  - Merah untuk pengeluaran (Expense)
- **Interactive Calendar**: Navigasi tanggal yang mudah
- **Modern Typography**: Menggunakan Google Fonts (Montserrat)

##  Screenshots

### Dashboard
- Ringkasan pendapatan dan pengeluaran
- Daftar transaksi berdasarkan tanggal
- Tombol aksi untuk edit/hapus transaksi
![image_dashboard](https://github.com/vinntodev/financial_recording/blob/6849f58225a4bc92958190a2a2c37a0bdf0517b6/home-page.png)

### Form Transaksi
- Switch untuk memilih tipe (Income/Expense)
- Input jumlah, kategori, tanggal, dan detail
- Validasi form
![image_form_transaction](https://github.com/vinntodev/financial_recording/blob/b449830a5774edd1cc9dcdb21765991d53cded71/add-transaction.png)

### Manajemen Kategori
- Daftar kategori berdasarkan tipe
- Tambah, edit, hapus kategori
- Switch untuk filter Income/Expense

##  Development

### Menjalankan dalam Mode Development
```bash
flutter run --debug
```

### Build untuk Production
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

### Database Migration
Jika ada perubahan pada schema database, jalankan:
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

##  Cara Penggunaan

1. **Menambah Transaksi**:
   - Tekan tombol "+" di halaman utama
   - Pilih tipe transaksi (Income/Expense)
   - Isi jumlah, pilih kategori, tanggal, dan detail
   - Tekan "Save"

2. **Mengelola Kategori**:
   - Buka halaman Categories
   - Switch untuk memilih tipe kategori
   - Tekan "+" untuk menambah kategori baru
   - Edit atau hapus kategori yang ada

3. **Melihat Transaksi**:
   - Gunakan kalender untuk memilih tanggal
   - Transaksi akan ditampilkan berdasarkan tanggal yang dipilih

##  Contributing

1. Fork repository ini
2. Buat feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit perubahan (`git commit -m "Add some AmazingFeature"`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

##  License

Distributed under the MIT License. See `LICENSE` for more information.



