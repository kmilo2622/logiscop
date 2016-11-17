<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
	return view('index');
});

Route::get('beneficios', function(){
	return view('sections/beneficios');
});

Route::get('quienes-somos', function(){
	return view('sections/quienes-somos');
});

Route::get('preguntas', function(){
	return view('sections/preguntas');
});

Route::get('soporte', function(){
	return view('sections/contact');
});

// Planes

Route::get('plan-basico', function(){
	return view('sections/plans/basic');
});

Route::get('plan-complementario', function(){
	return view('sections/plans/complementary');
});

Route::get('plan-integral', function(){
	return view('sections/plans/integral');
});

Route::get('plan-proteccion', function(){
	return view('sections/plans/protection');
});

Route::get('register', 'RegistroController@registro');

Route::get('start', 'RegistroController@start');

//Funcionamiento de la pagina web

Route::post('inserted', ['as'=>'register.create',
	'uses' => 'RegistroController@guardarRegistro']);

Route::post('success', ['as'=>'register.create',
	'uses' => 'RegistroController@iniciarSesion']);
