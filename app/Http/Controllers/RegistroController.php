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
use Illuminate\View\View;

class RegistroController extends Controller
{
	public function registro(){
		$mensaje = '<div class="alert alert-warning">';
		$mensaje .= '<strong>Recuerda!</strong> Todos los datos marcados con asterisco ( * ) Son obligatorios.';
		$mensaje .= '</div>';
		return view('sections/register')->with("mensaje", $mensaje);
	}

	public function start(){
		$mensaje = "<h4><strong>Iniciar Sesion</strong></h4>";
		return view('sections/start')->with("mensaje", $mensaje);
	}

	public function guardarRegistro(Request $request){

		$perfil = Cliente::get();

		$clientecito = $request->all();

		$password = $request['pwd'];

		if ($password != $request['pwd-confirmation']) {
			$mensaje = "<div class='alert alert-danger' align='center'>";
			$mensaje .= "<p><strong>Error!</strong>Verifique nuevamente la contraseña</p>";
			$mensaje .= "</div>";
			return view('sections.register')->with("mensaje". $mensaje);
		}

		//dd($clientecito); die;

		foreach ($perfil as $p) {
			if ($clientecito['acceptedterms'] == 1) {
				if ($clientecito['identificacion'] != $p->cedula) {
					//dd($clientecito);
					$cliente = Cliente::firstOrCreate([
					'nombre' => $clientecito['nombre'],
					'cedula' => $clientecito['identificacion'],
					'email' => $clientecito['email'],
					'contrasena' => $password,
					'nacimiento' => $clientecito['nacimiento'],
					'id_estado' => 1,
					'edad' => $clientecito['edad'],
					'celular' => $clientecito['edad'],
					'telefono' => $clientecito['telefono'],
					'referido' => $clientecito['referido'],
					'id_ciudad' => $clientecito['city'],
					'id_riesgo' => $clientecito['riesgo'],
					'id_afiliacion' => $clientecito['afiliacion'],
					'id_eps' => $clientecito['epSalud'],
					'id_caja' => $clientecito['cajaCompensacion'],
					'id_beneficiario' => $clientecito['beneficiarios'],
					'id_pension' => $clientecito['pensiones'],
				]);

				$mensaje = "<div class='alert alert-success' align='center'>";
				$mensaje .= "<p><strong>Registro Exitoso</strong></p>";
				$mensaje .= "</div>";

				return view('sections/register')->with('mensaje', $mensaje);

			} elseif ($clientecito['identificacion'] == $p->cedula) {

				$mensaje = "<div class='alert alert-danger' align='center'>";
				$mensaje .= "<p>No fue posible el registro pues este número de identificación ya existe</p>";
				$mensaje .= "</div>";

				return view('sections/register')->with('mensaje', $mensaje);

			}
		} else {

			$mensaje = "<h4><strong>Debe aceptar terminos y condiciones</strong></h4>";

			return $mensaje;
			return view('sections/register')->with('mensaje', $mensaje);

		}
	}
}

public function iniciarSesion(Request $request){
	$email = $request->input('email');
	$pass = $request->input('pwd');
	$mensaje = null;

	$cliente = Cliente::with('ciudades')
	->with('afiliaciones')
	->with('beneficiarios')
	->with('cajas')
	->with('eps')
	->with('pensiones')
	->with('estados')
	->with('riesgos')
	->get();

	foreach ($cliente as $c) {
		//echo $c['email'] . " ";
		//echo $c['contrasena'] . "<br /> ";
		if($email == $c['email'] && $pass == $c['contrasena']){
			$mensaje = "<div class='alert alert-success' align='center' style='margin-right:50px; margin-left:50px;'>";
			$mensaje .= "<p>Sesión iniciada correctamente</p>";
			$mensaje .= "</div>";
			return view('sections.panel.profile')->with("mensaje", $mensaje);
		} else {
			$mensaje = "<div class='alert alert-danger' align='center' style='margin-right:50px; margin-left:50px;''>";
			$mensaje .= "<p>Usuario incorrecto</p>";
			$mensaje .= "</div>";
			return view('sections.start')->with("mensaje", $mensaje);
		}
	}
}
}
