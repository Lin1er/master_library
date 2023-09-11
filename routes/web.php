<?php

use App\Http\Controllers\AdminController;
use App\Http\Middleware\AdminMiddleware;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BorrowController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\DashboardBookController;
use App\Http\Controllers\DashboardCategoryController;
use App\Http\Controllers\DashboardUserController;
use App\Http\Controllers\QueueController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UlasanController;
use App\Http\Controllers\SukaController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/openlibrary/search', [ApiController::class, 'search']);

Route::middleware(['guest'])->group(function () {
    Route::get('/login', [LoginController::class, 'index'])->name('login');
    Route::post('/login', [LoginController::class, 'authenticate']);
    Route::get('/register', [RegisterController::class, 'index'])->name('register');
    Route::post('/register', [RegisterController::class, 'store']);
});

Route::middleware(['auth'])->group(function () {
    Route::get('/profile', [PagesController::class, 'Profile'])->name('profile');
    Route::post('/logout', [LoginController::class, 'logout']);
    Route::get('/profile/edit', [UserController::class, 'edit'])->name('profile.edit');
    Route::put('/profile/update', [UserController::class, 'update'])->name('profile.update');
    Route::post('/ulasan', [UlasanController::class, 'store'])->name('ulasan.store');
    Route::post('/suka', [SukaController::class, 'store'])->name('suka.store');
    Route::delete('/unsuka', [SukaController::class, 'destroy'])->name('suka.destroy');
    Route::resources([
        '/queues' => QueueController::class,
    ]);
    Route::delete('/queues', [QueueController::class, 'destroy'])->name('queues.destroy');
});

Route::get('/', [PagesController::class, 'landing'])->name('landing');
Route::get('/home', [PagesController::class, 'homeBooks'])->name('homeBooks');
Route::get('/category/{category:slug}', [PagesController::class, 'singleCategory'])->name('singleCategory');
Route::get('/books/{slug}', [PagesController::class, 'singleBook'])->name('singleBook');

Route::get('/karya/karyabuku', [PagesController::class, 'KaryaBuku'])->name('KaryaBuku');
Route::get('/karya/karyatulisilmiah', [PagesController::class, 'KaryaTulisIlmiah'])->name('KaryaTulisIlmiah');
Route::get('/karya/karyatulisterpublikasi', [PagesController::class, 'KaryaTulisTerpublikasi'])->name('KaryaTulisTerpublikasi');

Route::get('/profile-perpustakaan', [PagesController::class, 'ProfilePerpustakaan'])->name('ProfilePerpustakaan');
Route::get('/visimisi', [PagesController::class, 'VisiMisi'])->name('VisiMisi');
Route::get('/prestasi', [PagesController::class, 'Prestasi'])->name('Prestasi');
Route::get('/layanan', [PagesController::class, 'Layanan'])->name('Layanan');
Route::get('/fasilitas', [PagesController::class, 'Fasilitas'])->name('Fasilitas');
Route::get('/promosi', [PagesController::class, 'Promosi'])->name('Promosi');
Route::get('/tata-tertib', [PagesController::class, 'TataTertib'])->name('TataTertib');
Route::get('/berita', [PagesController::class, 'Berita'])->name('Berita');



Route::middleware(['admin'])->group(function () {
    Route::resources([
        '/admins/users' => DashboardUserController::class,
        '/admins/books' => DashboardBookController::class,
        '/admins/categories' => DashboardCategoryController::class,
        '/borrows' => BorrowController::class,
    ]);
});


Route::group(['middleware' => [AdminMiddleware::class]], function () {
    // Route yang hanya dapat diakses oleh admin
    Route::get('/admins/dashboard', [AdminController::class, 'dashboard']);
    Route::get('/admins/users/{user}/edit', [DashboardUserController::class, 'edit'])->name('users.edit');
    Route::get('/admins/categories/{category}/edit', [DashboardCategoryController::class, 'edit'])->name('categories.edit');
    Route::get('/admins/books/{book}/edit', [DashboardBookController::class, 'edit'])->name('books.edit');
});


// Route::post('/borrow', [BorrowController::class, 'store'])->name('borrow.store');


// Route::get('/categories/{category:slug}', function (Category $category) {
//     return view('book.books', [
//         'title' => $category->name,
//         'books' => $category->book
//     ]);
// });

