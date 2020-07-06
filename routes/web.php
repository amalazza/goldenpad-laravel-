<?php


Route::get('/', 'PagesController@homepageadmin');
Route::get('about', 'PagesController@about');
Auth::routes(['register' => false]);
Route::get('siswa/cari', 'SiswaController@cari');
Route::resource('siswa', 'SiswaController');
Route::resource('kelas', 'KelasController')->parameters([
    'kelas' => 'kelas'
]);
Route::resource('hobi', 'HobiController');
Route::resource('user', 'UserController');

Route::resource('bahasa', 'BahasaController')->parameters([
    'bahasa' => 'bahasa'
]);
Route::resource('target', 'TargetController')->parameters([
    'target' => 'target'
]);
Route::resource('genre', 'GenreController');
Route::get('cerita/cari', 'CeritaController@cari');
Route::resource('cerita', 'CeritaController');

Route::get('homepageuser/cari', 'PagesController@cari');
Route::resource('homepageuser', 'PagesController');
Route::get('homepageuser', 'PagesController@homepageuser');
Route::get('aboutuser', 'PagesController@aboutuser');