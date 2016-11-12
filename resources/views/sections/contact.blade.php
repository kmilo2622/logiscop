@include('templates/header')
<br><br>
<div class="contacto-header" align="center">
	<div class="container">
		<h1 class="registro">Contacto y Soporte</h1>
	</div>
</div>
<div class="content">
	<p>
		Bienvenido a nuestro formulario de soporte. Atendemos tus inquietudes, preguntas y sugerencias acerca de nuestro servicio. Responderemos tus solicitudes de 1 a 24 horas dependiendo la respuesta requerida.
	</p>
	<hr>
	<div id="informacion">
		<p class="col-sm-6">
			<span class="glyphicon glyphicon-home"></span>
			- Bogotá: Carrera 7 N 71 – 21 Torre: B – Piso 13. - Medellin: Calle 29 No 41 -105 Oficina 11 – 03 Edificio SOHO. - Calí: Carrera 36A 6-60 Barrio El Templete. - Villavicencio: Carrera 39 33- 21 Oficina 101 Barzal Alto
		</p>
		<p class="col-sm-6">
			<span class="glyphicon glyphicon-envelope"></span>
			soporte@logiscop.com.co <br>
			<span class="glyphicon glyphicon-envelope"></span>
			contacto@logiscop.com.co <br>
			<span class="glyphicon glyphicon-earphone"></span>
			(+571)3441390 - (+574)2040762 - (+572)8912486 <br>
			<span class="glyphicon glyphicon-phone"></span>
			323 228 22 34 <br>
			<span class="glyphicon glyphicon-hand-up"></span>
			http://www.logiscop.com.co
		</p>
	</div>
	<br><br><br><br><br><br><br>
	<div class="contact-form">
		<form class="form-horizontal" method="POST">

			<div class="alert alert-info">
				<strong>Recuerda!</strong> Todos los datos marcados con asterisco ( * ) Son obligatorios.
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Nombres y Apellidos *:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" required="required" id="nombre-contacto" name="nombre-contacto" placeholder="Digite sus nombres completos">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Correo Electrónico *:</label>
				<div class="col-sm-9">
					<input type="email" class="form-control" required="required" id="email-contacto" name="email-contacto" placeholder="Introduzca Correo Electrónico">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Asunto *:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" required="required" id="asunto-contacto" name="asunto-contacto" placeholder="¿Por qué se comunica con nosostros?">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Mensaje *:</label>
				<div class="col-sm-9">
					<textarea class="form-control" required="required" rows="5" id="mensaje-contacto" name="mensaje-contacto" placeholder="Introduzca aquí su Mensaje"></textarea>
				</div>
			</div>
			<div class="form-group" align="center">
				<div class="col-sm-offset-2 col-sm-9">
					<button type="submit" class="btn btn-success btn-lg">Enviar Mensaje</button>
				</div>
			</div>
		</form>		
	</div>
</div>
@include('templates/footer')