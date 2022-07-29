<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\SingleActionController;
use App\Http\Controllers\PhotoController;
use App\Http\Controllers\RegistrationController;
use App\Models\Customer;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;
use Illuminate\Support\Facades\App;

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

// Route::get('contact',function(){
//     return view('contact');
// // });

// Route::get('/',[DemoController::class, 'sweethome']);
// Route::get('/contact',SingleActionController::class);
// Route::resource('photo', PhotoController::class);

Route::group(['prefix' => '/admin'], function(){
    Route::get('form', [RegistrationController::class, 'form']);
    Route::post('insert', [RegistrationController::class, 'register']);
    Route::get('delete/{id}', [RegistrationController::class, 'delete'])->name("cus.delete");
    Route::get('force_delete/{id}', [RegistrationController::class, 'force_delete'])->name("force.delete");
    Route::get('restore/{id}', [RegistrationController::class, 'restore'])->name("cus.restore");
    Route::get('edit/{id}', [RegistrationController::class, 'edit'])->name("cus-edit");
    Route::post('update/{id}', [RegistrationController::class, 'update']);
    Route::get('list', [RegistrationController::class, 'list']);
    Route::get('trash', [RegistrationController::class, 'trash']);
    Route::get('home', function() {
        return view("home");
    });
    Route::get('about', function() {
        return view("about");
    });

    Route::get('/{lang?}', function($lang = null) {
        App::setLocale($lang);
        return view("home");
    });

});


