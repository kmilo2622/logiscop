<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
	protected $guarded=['id'];

	public function ciudades(){
		return $this->belongsTo('App\Ciudad', 'id_ciudad', 'codigo');
	}

	public function afiliaciones(){
		return $this->belongsTo('App\Afiliacion', 'id_afiliacion', 'id');
	}

	public function beneficiarios(){
		return $this->belongsTo('App\Beneficiario', 'id_beneficiario', 'id');
	}

	public function cajas(){
		return $this->belongsTo('App\Caja', 'id_caja', 'id');
	}

	public function eps(){
		return $this->belongsTo('App\EPS', 'id_eps', 'id');
	}

	public function pensiones(){
		return $this->belongsTo('App\Pension', 'id_pension', 'id');
	}
	
	public function estados(){
		return $this->belongsTo('App\Estado', 'id_estado', 'id');
	}

	public function riesgos(){
		return $this->belongsTo('App\Riesgo', 'id_riesgo', 'id');
	}
}