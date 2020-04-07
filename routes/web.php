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

Route::get('/', function () {
    return view('home');
});

Route::get('/login', 'AuthController@login')->name('login');
Route::post('/postlogin', 'AuthController@postLogin');
Route::get('/logout', 'AuthController@logout');

Route::group(['middleware' => ['auth', 'checkRole:admin']], function(){
    Route::get('/dashboard', 'DashboardController@index');
    Route::get('/siswa', 'SiswaController@index');
    Route::post('/siswa/create', 'SiswaController@create');
    Route::get('/siswa/{id}/edit', 'SiswaController@edit');
    Route::patch('/siswa/{siswa}', 'SiswaController@update')->name('siswa.update');
    Route::get('/siswa/{id}/hapus', 'SiswaController@delete');
    Route::get('/siswa/{id}/profile', 'SiswaController@profile');
    Route::post('/siswa/{id}/addnilai', 'SiswaController@addNilai');
});

Route::group(['middleware' => ['auth', 'checkRole:admin,siswa']], function(){
    Route::get('/dashboard', 'DashboardController@index');
});


