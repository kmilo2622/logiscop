<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clientes', function (Blueprint $table) {
            $table->increments('id');
            $table->mediumText('nombre');
            $table->bigInteger('cedula');
            $table->string('email');
            $table->string('contraseña');
            $table->string('nacimiento');
            $table->integer('id_estado')->references('id')->on('estados')->nullable();
            $table->integer('edad');
            $table->bigInteger('celular')->nullable();
            $table->bigInteger('telefono')->nullable();
            $table->integer('referido')->nullable();


            $table->integer('id_ciudad')->references('id')->on('ciudads')->nullable();

            $table->integer('id_riesgo')->references('id')->on('riesgos')->nullable();
            $table->integer('id_afiliacion')->references('id')->on('afiliacions')->nullable();
            $table->integer('id_eps')->references('id')->on('e_p_s')->nullable();
            $table->integer('id_caja')->references('id')->on('cajas')->nullable();
            $table->integer('id_beneficiario')->references('id')->on('beneficiarios')->nullable();
            $table->integer('id_pension')->references('id')->on('pensions')->nullable();
            $table->integer('id_enfermedad')->references('id')->on('enfermedads')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('clientes');
    }
}
