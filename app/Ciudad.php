<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ciudad extends Model
{
	protected $guarded=['id'];

	public function departamentos(){
		return $this->belongsTo('App\Departamento', 'id_departamento', 'id');
	}
}
