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
		$mensaje = "<h4><strong>Iniciar Sesion</strong></h4>";
		return view('sections/start')->with("mensaje", $mensaje);
	}

	public function guardarRegistro(Request $request){

		$cliente = Cliente::with('ciudades')
		->with('afiliaciones')
		->with('beneficiarios')
		->with('cajas')
		->with('eps')
		->with('pensiones')
		->with('estados')
		->with('riesgos')
		->get();

		$email = $request->input('email');
		$pass = $request->input('pwd');
		$mensaje = null;

		if($email == $cliente->email && $pass == $cliente->contrasena){
			$mensaje = "<div class='alert alert-success' align='center'>";
			$mensaje .= "<p>Sesión iniciada correctamente</p>";
			$mensaje .= "</div>";
			return view('sections.panel.profile')->with("mensaje", $mensaje);
		} else {
			$mensaje = "<div class='alert alert-danger' align='center'>";
			$mensaje .= "<p>Usuario incorrecto</p>";
			$mensaje .= "</div>";
			return view('sections.start')->with("mensaje", $mensaje);
		}

		//return $cliente;

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
