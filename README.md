# eLibrary - Sistem Perpustakaan Online

eLibrary adalah aplikasi perpustakaan online yang memungkinkan pengguna untuk mencari, meminjam, dan mengelola buku secara digital. Aplikasi ini dirancang untuk mempermudah pengelolaan buku dan meningkatkan aksesibilitas perpustakaan bagi pengguna, termasuk siswa, guru, dan staf.

## Fitur

- **Pencarian Buku**: Pengguna dapat mencari buku berdasarkan judul, pengarang, atau kategori.
- **Manajemen Buku**: Admin dapat menambah, mengedit, dan menghapus data buku.
- **Peminjaman Buku**: Pengguna dapat meminjam buku dengan mengikuti proses peminjaman yang terintegrasi.
- **Notifikasi**: Pengguna mendapatkan notifikasi mengenai status peminjaman dan pengembalian buku.
- **Manajemen Anggota**: Admin dapat menambah dan mengelola anggota perpustakaan.

## Teknologi

Aplikasi ini dibangun dengan teknologi berikut:
- **Backend**: Laravel (PHP)
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL
- **Authentication**: Laravel Jetstream
- **Pengelolaan Izin**: Spatie/Permission untuk manajemen peran pengguna

## Instalasi

### Persyaratan Sistem

- PHP >= 8.0
- Composer
- MySQL atau MariaDB
- Node.js (untuk frontend)
- Laravel 11

### Langkah Instalasi

1. Clone repository ini ke komputer Anda:
    ```bash
    git clone https://github.com/username/elibrary.git
    ```

2. Masuk ke folder proyek:
    ```bash
    cd elibrary
    ```

3. Install dependensi backend menggunakan Composer:
    ```bash
    composer install
    ```

4. Salin file `.env.example` ke `.env` dan sesuaikan pengaturan database:
    ```bash
    cp .env.example .env
    ```

5. Generate key aplikasi:
    ```bash
    php artisan key:generate
    ```

6. Jalankan migrasi untuk membuat tabel-tabel database:
    ```bash
    php artisan migrate
    ```

7. Install dependensi frontend menggunakan npm:
    ```bash
    npm install
    ```

8. Bangun assets frontend:
    ```bash
    npm run dev
    ```

9. Jalankan server:
    ```bash
    php artisan serve
    ```

Aplikasi akan berjalan di `http://localhost:8000`.

## Penggunaan

- **Pengguna**: Untuk mengakses aplikasi, pengguna harus mendaftar dan login. Setelah login, pengguna dapat mencari dan meminjam buku.
- **Admin**: Admin dapat mengelola buku dan anggota, serta memverifikasi peminjaman buku.

## Kontribusi

Jika Anda ingin berkontribusi pada proyek ini, silakan fork repository ini, buat cabang baru (`git checkout -b fitur-baru`), lakukan perubahan yang diinginkan, kemudian kirim pull request.

## Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).
