<?php
session_start();

if(!$_SESSION["validar"]){

	//header("location:ingreso");
	echo "<script>location.href='ingreso';</script>";

	exit();

}

include "views/modules/botonera.php";
include "views/modules/cabezote.php";

?>

<!--=====================================
INICIO       
======================================-->

<div id="inicio" class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
 
	<div class="jumbotron">
	    <h1>Cosamaloapan Veracruz</h1>
	    <p>Bienvenidos al panel de control.</p>
	</div>

		<hr>
	
	<ul>

		<li class="botonesInicio">
		
			<a href="slide">
			<div style="background:#4CF53A">
			<span class="glyphicon glyphicon-unchecked"></span>
			<p>Slide</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="articulos">
			<div style="background:#F640DA">
			<span class="glyphicon glyphicon-comment"></span>
			<p>Noticias</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="eventos">
			<div style="background:#04E6DE">
			<span class="glyphicon glyphicon-calendar"></span>
			<p>Eventos</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="galeria">
			<div style="background:#1434AD">
			<span class="glyphicon glyphicon-picture"></span>
			<p>Im¨¢genes</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="desarrollo">
			<div style="background:#4CF53A">
			<span class="glyphicon glyphicon-file"></span>
			<p>Plan de Desarrollo</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="directorio">
			<div style="background:#F640DA">
			<span class="glyphicon glyphicon-phone-alt"></span>
			<p>Directorio</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="alcalde">
			<div style="background:#04E6DE">
			<span class="glyphicon glyphicon-user"></span>
			<p>Conoce al alcalde</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="tramites">
			<div style="background:#1434AD"> 
			<span class="glyphicon glyphicon-list-alt"></span>
			<p>Tramites</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="bolsa">
			<div style="background:#4CF53A">
			<span class="glyphicon glyphicon-briefcase"></span>
			<p>Bolsa de Trabajo</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="salud">
			<div style="background:#F640DA">
			<span class="glyphicon glyphicon-apple"></span>
			<p>Salud</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="educaci¨®n">
			<div style="background:#04E6DE">
			<span class="glyphicon glyphicon-education"></span>
			<p>Educaci¨®n</p>
			</div>
			</a>

		</li>

		<!--<li class="botonesInicio">
		
			<a href="portal">
			<div style="background:#1434AD"> 
			<span class="glyphicon glyphicon-bookmark"></span>
			<p>Portal de Obligaciones</p>
			</div>
			</a>

		</li>-->

		<li class="botonesInicio">
		
			<a href="categorias">
			<div style="background:#1434AD">
			<span class="glyphicon glyphicon-th-list"></span>
			<p>Categorias</p>
			</div>
			</a>

		</li>

		<li class="botonesInicio">
		
			<a href="empresas">
			<div style="background:##4CF53A">
			<span class="glyphicon glyphicon-home"></span>
			<p>Empresas</p>
			</div>
			</a>

		</li>


		<?php 

	  	if($_SESSION["rol"] == 0){

			echo '<li class="botonesInicio">
			
				<a href="suscriptores">
				<div style="background:#ED3E3E">
				<span class="glyphicon glyphicon-envelope"></span>
				<p>Suscriptores</p>
				</div>
				</a>

			</li>';

		}
		?>

	</ul>

</div>

<!--====  Fin de INICIO  ====-->