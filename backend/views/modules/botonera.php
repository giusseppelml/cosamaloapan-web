<!--=====================================
COLUMNA BOTONERA           
======================================-->

	<div class="col-lg-2 col-md-2 col-sm-3 col-xs-12" id="col1">
		
		<div id="logo" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				
			<img src="views/images/logotipo.jpg" class="img-responsive" alt="Image">


		</div>

		<!--=====================================
		BOTONERA MOVIL            
		======================================-->

		<div id="botoneraMovil" class="navbar-header navbar-inverse">

			<button type="button" class="navbar-toggle pull-left" data-toggle="collapse" data-target="#botonera">

				<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
       			<span class="icon-bar"></span>

			</button>
		
		</div>

		<!--====  Fin de BOTONERA MOVIL  ====-->

		<nav id="botonera" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 collapse navbar-collapse text-center">
					
			<ul class="nav navbar">

				<li><a href="inicio">Inicio<span class="glyphicon glyphicon-new-window"></span></a></li>
				<li><a href="slide">Slide<span class="glyphicon glyphicon-unchecked"></span></a></li>
				<li><a href="articulos">Noticias<span class="glyphicon glyphicon-comment"></span></a></li>
				<li><a href="eventos">Eventos<span class="glyphicon glyphicon-calendar"></span></a></li>
				<li><a href="galeria">Imágenes<span class="glyphicon glyphicon-picture"></span></a></li>
				<li><a href="desarrollo">Plan de Desarrollo<span class="glyphicon glyphicon-file"></span></a></li>
				<li><a href="directorio">Directorio<span class="glyphicon glyphicon-phone-alt"></span></a></li>
				<li><a href="alcalde">Conoce al alcalde<span class="glyphicon glyphicon-user"></span></a></li>
				
				<li><a href="tramites">Tramites<span class="glyphicon glyphicon-list-alt"></span></a></li>
				<li><a href="bolsa">Bolsa de Trabajo<span class="glyphicon glyphicon-briefcase"></span></a></li>
				<li><a href="salud">Salud<span class="glyphicon glyphicon-apple"></span></a></li>
				<li><a href="educacion">Educación<span class="glyphicon glyphicon-education"></span></a></li>
				<!--<li><a href="portal">Portal de Obligaciones<span class="glyphicon glyphicon-bookmark"></span></a></li>-->
				<li><a href="categorias">Categorias<span class="glyphicon glyphicon-th-list"></span></a></li>
				<li><a href="empresas">Empresas<span class="glyphicon glyphicon-home"></span></a></li>
				
				<?php 

	  			if($_SESSION["rol"] == 0){
				
				echo '<li><a href="suscriptores">Suscriptores <span class="glyphicon glyphicon-envelope"></span></a></li>';

				}
				?>

			</ul>

		</nav>

		<a href="../index.php" target="_blank"><button type="button" class="btn btn-primary">Ver sitio</button></a>

	</div>

<!--====  FIn de COLUMNA BOTONERA  ====-->