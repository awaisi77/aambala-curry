<?php

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

Route::get('locale/{locale}', function ($locale){
    Session::put('locale', $locale);
    return redirect()->back();
});

Route::get('/', 'FrontEndController@index')->name('front');
Route::get('/'.env('URL_ROUTE','restaurant').'/{alias}', 'FrontEndController@restorant')->name('vendor');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => 'auth'], function () {
	Route::resource('user', 'UserController', ['except' => ['show']]);
    Route::resource('restorants', 'RestorantController');
    Route::post('/updateres/location/{restorant}', 'RestorantController@updateLocation');
    Route::get('/get/rlocation/{restorant}', 'RestorantController@getLocation');
    Route::post('/import/restaurants', 'RestorantController@import')->name('import.restaurants');
    Route::get('/restaurant/{restorant}/activate', 'RestorantController@activateRestaurant')->name('restaurant.activate');
    Route::post('/restaurant/workinghours', 'RestorantController@workingHours')->name('restaurant.workinghours');

    Route::resource('drivers', 'DriverController');
    Route::resource('clients', 'ClientController');
    Route::resource('orders', 'OrderController');
    Route::resource('attendance', 'DeliveryStaffAttendanceController');
    Route::get('attendance/checkIn/{id}', 'DeliveryStaffAttendanceController@checkIn')->name('checkIn');
    Route::get('attendance/checkOut/{aId}', 'DeliveryStaffAttendanceController@checkOut')->name('checkOut-attendance');

    Route::get('ordertracingapi/{order}', 'OrderController@orderLocationAPI');
    Route::get('liveapi', 'OrderController@liveapi');

    Route::get('live', 'OrderController@live');
    Route::get('/updatestatus/{alias}/{order}', ['as' => 'update.status', 'uses'=>'OrderController@updateStatus']);

    Route::resource('settings', 'SettingsController');

	Route::get('profile', ['as' => 'profile.edit', 'uses' => 'ProfileController@edit']);
	Route::put('profile', ['as' => 'profile.update', 'uses' => 'ProfileController@update']);
    Route::put('profile/password', ['as' => 'profile.password', 'uses' => 'ProfileController@password']);

    Route::resource('items', 'ItemsController');
    Route::get('/items/list/{restorant}', 'ItemsController@indexAdmin')->name('items.admin');
    Route::post('/import/items', 'ItemsController@import')->name('import.items');
    Route::post('/item/change/{item}', 'ItemsController@change');

    Route::resource('categories', 'CategoriesController');

    //Route::post('/order/address','AddressControler@orderAddress')->name('order.address');

    Route::post('/change/{page}', 'PagesController@change')->name('changes');

    Route::post('ckeditor/image_upload', 'CKEditorController@upload')->name('upload');
    Route::get('/payment','PaymentController@view')->name('payment.view');
    Route::post('/make/payment','PaymentController@payment')->name('make.payment');



});

Route::get('/cart-checkout', 'CartController@cart')->name('cart.checkout');
//Route::get('/cart-checkout', function (){
//    return \Illuminate\Support\Facades\Session::all();
//})->name('cart.checkout');
Route::get('/new/address/autocomplete','AddressControler@newAddressAutocomplete');
Route::post('/new/address/details','AddressControler@newAdressPlaceDetails');
Route::resource('addresses', 'AddressControler');

Route::get('/footer-pages', 'PagesController@getPages');
Route::get('/guest-login', 'PagesController@guestLogin')->name('guestLogin');
Route::post('/guest-register', 'PagesController@guestRegister')->name('guestRegister');
Route::get('/cart-getContent', 'CartController@getContent')->name('cart.getContent');
Route::post('/cart-add', 'CartController@add')->name('cart.add');
Route::post('/cart-remove', 'CartController@remove')->name('cart.remove');
Route::get('/cart-update', 'CartController@update')->name('cart.update');
Route::get('/cartinc/{item}', 'CartController@increase')->name('cart.increase');
Route::get('/cartdec/{item}', 'CartController@decrease')->name('cart.decrease');


Route::post('/order', 'OrderController@store')->name('order.store');

Route::resource('pages', 'PagesController');

Route::get('/login/google', 'Auth\LoginController@googleRedirectToProvider')->name('google.login');
Route::get('/login/google/redirect', 'Auth\LoginController@googleHandleProviderCallback');

Route::get('/login/facebook', 'Auth\LoginController@facebookRedirectToProvider')->name('facebook.login');
Route::get('/login/facebook/redirect', 'Auth\LoginController@facebookHandleProviderCallback');

Route::get('/new/restaurant/register', 'RestorantController@showRegisterRestaurant')->name('newrestaurant.register');
Route::post('/new/restaurant/register/store', 'RestorantController@storeRegisterRestaurant')->name('newrestaurant.store');


