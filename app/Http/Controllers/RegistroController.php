<?php

namespace App\Http\Controllers;

use App\Cliente;
use App\Afiliacion;
use App\Riesgo;
use App\EPS;
use App\Caja;
use App\Ciudad;
use App\Beneficiario;
use App\Pension;

use Illuminate\Http\Request;

class RegistroController extends Controller
{
	public function registro(){
		return view('sections/register');
	}

	public function start(){
		return view('sections/start');
	}

	public function guardarRegistro(Request $request){

		$email = $request->input('email');
		$pass = $request->input('pwd');
		$mensaje = null;

		if($email == '123@123.com' && $pass == "mama45"){
			$mensaje = "Funciona";
		} else {
			$mensaje = "Usuario incorrecto";
		}

		return view('sections.start')->with("mensaje", $mensaje);

		$cliente = Cliente::with('ciudades')
		->with('afiliaciones')
		->with('beneficiarios')
		->with('cajas')
		->with('eps')
		->with('pensiones')
		->with('estados')
		->with('riesgos')
		->get();

		return $cliente;

		/*$cliente = Cliente::firstOrCreate([
			'nombre' => 'John Arij',
			'cedula' => 1023026521,
			'email' => 'juanca-arroyave@hotmail.com',
			'contraseña' => 'mama45',
			'nacimiento' => '26-03-1998',
			'id_estado' => 1,
			'edad' => 18,
			'celular' => 3216226647,
			'id_ciudad' => 11001,
			'id_riesgo' => 1,
			'id_afiliacion' => 1,
			'id_eps' => 1,
			'id_caja' => 1,
			'id_beneficiario' => 2,
			'id_pension' => 1,
			]);*/
		}
	}
