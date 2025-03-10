<?php


use Illuminate\Support\Facades\Route;
use App\Livewire\Home;
use App\Livewire\BlogDetail;
use App\Livewire\Cart;
use App\Livewire\Checkout;
use App\Livewire\Contact;
use App\Livewire\Login;
use App\Livewire\Register;
use App\Livewire\LostPassword;
use App\Livewire\MyAccount;
use App\Livewire\OrderReceived;
use App\Livewire\Product;
use App\Livewire\Reservation;
use App\Livewire\Shop;
use App\Livewire\Blog;

Route::get('/', Home::class);
Route::get('/cart', Cart::class);
Route::get('/checkout', Checkout::class);
Route::get('/contact', Contact::class);
Route::get('/login', Login::class);
Route::get('/register', Register::class);
Route::get('/lost-password', LostPassword::class);
Route::get('/my-account', MyAccount::class);
Route::get('/order-received', OrderReceived::class);
Route::get('/blog/{slug}', BlogDetail::class);
Route::get('/product/{slug}', Product::class);
Route::get('/reservation', Reservation::class);
Route::get('/shop', Shop::class);
Route::get('/blog', Blog::class);
