# Pengingat Tugas Kuliah

Proyek mata kuliah Pemrograman Mobile. Aplikasi Flutter ini dirancang untuk mencatat tugas per mata kuliah dan membantu mahasiswa melihat tenggat yang mendekat atau sudah lewat.

## Menjalankan proyek

Pasang Flutter SDK dan Android SDK. Jalankan emulator Android atau sambungkan HP dengan USB debugging aktif. Dari folder proyek, jalankan:

```sh
flutter pub get
flutter devices
flutter run
flutter analyze
```

Jika ada lebih dari satu perangkat, gunakan `flutter run -d <device-id>`.

## Struktur awal

```text
android/                     Konfigurasi aplikasi Android
lib/
  main.dart                  Titik masuk aplikasi
  models/                    Model MataKuliah dan Tugas
  database/                  Skema SQLite dan operasi CRUD
  pages/
    home_page.dart            Beranda dan navigasi utama
    task_list_page.dart       Daftar tugas
    course_list_page.dart     Daftar mata kuliah
```

Dependensi `sqflite` dan `path` sudah terpasang. Saat ini ketiga tab menampilkan teks sementara.

## Pembagian kerja

| Anggota | Tanggung jawab |
| --- | --- |
| Satria, PM | Susun prioritas, koordinasikan integrasi, dan siapkan skenario demo. |
| Yoga, Backend | Isi `models/` dan `database/` dengan model, skema, dan operasi CRUD. Aktifkan foreign key SQLite untuk relasi tugas ke mata kuliah dan cegah penghapusan mata kuliah yang masih punya tugas. |
| Juli, Frontend | Lanjutkan tiga tab dan tambahkan halaman formulir tugas, formulir mata kuliah, serta detail mata kuliah. Formulir tambah dan ubah dapat memakai halaman yang sama. |

## Target demo

- CRUD mata kuliah dengan nama wajib dan unik. CRUD tugas dengan pilihan mata kuliah, judul wajib, prioritas Rendah/Sedang/Tinggi, `showDatePicker` untuk tenggat, dan `Checkbox` untuk status selesai. Gunakan `Form` dan `TextFormField` dengan validator.
- Urutkan tugas dari tenggat terdekat dan sediakan filter Semua, Belum Selesai, Selesai, dan Terlambat. Tandai tugas yang lewat tenggat dan belum selesai dengan merah, serta tugas yang tersisa satu hari dengan oranye.
- Tampilkan jumlah tugas belum selesai dan terlambat serta tiga tugas dengan tenggat terdekat di Beranda. Tampilkan daftar tugas per mata kuliah dan ringkasan progres di halaman detail.
- Konfirmasi setiap penghapusan. Jelaskan alasannya jika mata kuliah masih punya tugas. Tampilkan petunjuk untuk menambah data saat daftar kosong.
- Pastikan data tetap ada setelah aplikasi ditutup penuh dan dibuka lagi. Siapkan demo di Android dan jalankan `flutter analyze` sebelum pengumpulan.
