@include('sections/panel/header')
<br><br>
<div class="register-header" align="center">
    <div class="container">
        <h1 class="registro">
            @php
            echo "Hola! " . $cliente;
            @endphp
        </h1>
    </div>
</div>
<div class="content">
    <p>Ha iniciado sesión correctamente, en este panel de control puede verificar toda su información, si tiene alguna inquietud puede comunicarse con nosotros desde el área de <a href="soporte"><strong>soporte</strong></a> </p>
    <hr>
    <h3>Nombre </h3> {{ $cliente }}
    <h3>Cédula </h3> {{ $informacion['cedula'] }}
    <h3>Correo Electrónico </h3> {{ $informacion['email'] }}
    <h3>Edad </h3> {{ $informacion['edad'] . " años" }}
</div>
@include('templates/footer')
