<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, yet powerful, providing tools needed for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of any modern web application framework, making it a breeze to get started learning the framework.

If you're not in the mood to read, [Laracasts](https://laracasts.com) contains over 1100 video tutorials on a range of topics including Laravel, modern PHP, unit testing, JavaScript, and more. Boost the skill level of yourself and your entire team by digging into our comprehensive video library.

## KIOSTAS

KIOSTAS merupakan produk yang dibangun sebagai sebuah marketplace tempat bertemunya para pemilik usaha, kios, pedagang, bisnis yang dikategorikan dalam kelompok UMKM dengan para pembeli dan pemangku kepentingan lainnya. 
Marketplace KIOSTAS akan  memfasilitasi proses jual beli berbagai produk mitra UMKM dengan menyediakan tempat bagi para penjual yang ingin berjualan dan membantu mereka untuk bertemu pembeli dan melakukan transaksi dengan lebih simpel dan mudah. 
Jika si calon pembeli ingin membeli produk yang ditawarkan, mereka bisa melakukan transaksi pemesanan melalui marketplace itu sendiri. 
Kemudian setelah menerima pembayaran, penjual akan mengirim barang ke pembeli.  

## Instalasi
Pada bagian ini dijelaskan bagaimana melakukan instalasi KIOSTAS, yaitu : 
1. Clone repository dengan mengetikkan command “git clone https://github.com/kerja-praktik/kpsi20-309a-marketplace-kiostas.git” pada terminal.
2. Pada folder, buka command prompt dan jalankan “composer install”
3. Buat database untuk KIOSTAS dan atur user management sesuai dengan file .env pada file KIOSTAS.
4. Setelah mendefinisikan perubahan pada file .env, selanjutnya jalankan perintah “php artisan migrate” untuk melakukan migration
5. jalankan (execute) query dari file DB file sql yaitu "kiostas_db.sql" pada tool administrasi untuk database MySQL.
6. Jalankan command “php artisan serve” dan masukkan ke web browser masing-masing.
