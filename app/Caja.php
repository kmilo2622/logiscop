<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Caja extends Model
{
	protected $guarded=['id'];

	public function ciudades(){
		return $this->belongsTo('App\Ciudad', 'id_ciudad', 'codigo');
	}
}
