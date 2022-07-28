<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\SingleActionController;
use App\Http\Controllers\PhotoController;
use App\Http\Controllers\RegistrationController;
use App\Models\Customer;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function (){
//     return view('home');
// });

// Route::get('/about', function (){
//     return view('about');
// });

Route::get('/',[DemoController::class, 'sweethome']);
Route::get('/contact',SingleActionController::class);
Route::resource('photo', PhotoController::class);

Route::get('about', function () {
    return view('about');
});
Route::get('/form', [RegistrationController::class, 'form']);
Route::post('/insert', [RegistrationController::class, 'register']);

Route::get('/table', function (){
    $costomer = Customer::all();
    echo '<pre>';
    print_r($costomer->toArray());
});
Route::get('contact', function(){
    return view('contact');
});
