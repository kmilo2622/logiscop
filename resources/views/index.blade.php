@include('templates/header')
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="{{{ asset('/pictures/1.jpg') }}}" alt="Chania">
            <div class="carousel-caption">
                <h3>Chania</h3>
                <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
            </div>
        </div>

        <div class="item">
            <img src="{{{ asset('/pictures/2.jpg') }}}" alt="Chania">
            <div class="carousel-caption">
                <h3>Chania</h3>
                <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
            </div>
        </div>

        <div class="item">
            <img src="{{{ asset('/pictures/3.jpg') }}}" alt="Flower">
            <div class="carousel-caption">
                <h3>Flowers</h3>
                <p>Beatiful flowers in Kolymbari, Crete.</p>
            </div>
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Anterior</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Siguiente</span>
    </a>
</div>

<div class="features-index" align="center">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-6 feature-afiliation">
                <h4 class="item_title item_title__">
                    <a href="plan-basico">
                        Afiliese Plan <p>Básico</p>
                    </a>
                </h4>
                <p style="text-align: center;">
                    <strong>EPS + ARL desde tan sólo <br> $69.900</strong>
                </p>
            </div>
            <div class="col-xs-12 col-md-6 feature-afiliation">
                <h4 class="item_title item_title__">
                    <a href="plan-complementario">
                        Afiliese Plan <p>Complementario</p>
                    </a>
                </h4>
                <p style="text-align: center;">
                    <strong>EPS + ARL + CAJA desde sólo <br> $89.900</strong>
                </p>
            </div>
            <div class="col-xs-12 col-md-6 feature-afiliation">
                <h4 class="item_title item_title__">
                    <a href="plan-integral">
                        Afiliese Plan <br> Integral
                    </a>
                </h4>
                <p style="text-align: center;">
                    <strong>EPS + CAJA + ARL + PENSIÓN desde <br>  $199.900</strong>
                </p>
            </div>
            <div class="col-xs-12 col-md-6 feature-afiliation">
                <h4 class="item_title item_title__">
                    <a href="plan-proteccion">
                        Afiliese Plan <br> Protección
                    </a>
                </h4>
                <p style="text-align: center;">
                    <strong>EPS + ARL + PENSIÓN desde <br> $186.900</strong>
                </p>
            </div>
        </div>
    </div>
</div>

<a href="register" id="registrarse-index">
    <div class="front-image2">
        <br>
        <br>
        <p class="hero-text">Registro Rápido</p>
        <div class="hero-text2">
            <p>Afíliate las 24 Horas</p>
            <p>Sin fotocopias ni impresos</p>
            <p>Sin filas y sin trancón</p>
            <p>Paga seguro y en línea</p>
        </div>
    </div>
</a>
@include('templates/footer')
