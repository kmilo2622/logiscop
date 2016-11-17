@include('templates/header')
<br><br>
<div class="register-header" align="center">
	<div class="container">
		<h1 class="registro">Iniciar Sesion</h1>
	</div>
</div>
<div align="center" style="margin-top: 30px; margin-bottom: 0;">
	@php
	echo $mensaje;
	@endphp
</div>
<div class="container exclaimer">
	<div class="formulario">
		<form class="form-horizontal" method="POST" action="{{ action('RegistroController@iniciarSesion') }}">
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Email *:</label>
				<div class="col-sm-9">
					<input type="email" class="form-control" required="required" id="email" name="email" placeholder="Introduzca su Correo Electrónico *">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Contraseña *:</label>
				<div class="col-sm-9">
					<input type="password" class="form-control" required="required" id="pwd" name="pwd" placeholder="Introduzca su Contraseña *">
				</div>
			</div>

			<!--Submit Button-->
			<div class="form-group" align="center">
				<button type="submit" class="btn btn-success btn-lg">Iniciar Sesion</button>
			</div>
		</form>
	</div>
</div>
@include('templates/footer')
