<?php
session_start();

if(!$_SESSION["validar"]){

	echo "<script>location.href='ingreso';</script>";

	exit();

}

include "views/modules/botonera.php";
include "views/modules/cabezote.php";

?>
<!--=====================================
ARTÍCULOS ADMINISTRABLE          
======================================-->

<div id="seccionArticulos" class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
	
	<button id="btnAgregarArticulo" class="btn btn-info btn-lg">Agregar Desarrollo</button>

	<!--==== AGREGAR ARTÍCULO  ====-->

	<div id="agregarArtículo" style="display:none">
		
		<form method="post" enctype="multipart/form-data">

			<input name="tituloArticulo" type="text" placeholder="Título" class="form-control" required>

			<textarea name="introArticulo" id="" cols="30" rows="5" placeholder="Descipción" class="form-control"  maxlength="170" required></textarea>

			<input type="file" name="imagen" class="btn btn-default" id="subirFoto" required>

			<p>Tamaño recomendado: 800px * 400px, peso máximo 2MB</p>

			<div id="arrastreImagenArticulo">	
				
			</div>

			<textarea name="contenidoArticulo" id="" cols="30" rows="10" placeholder="Contenido" class="form-control" required></textarea>

			<input name="categoriaArticulo" type="hidden" placeholder="Categoria" class="form-control" value="desarrollo">

			<input type="submit" id="guardarArticulo" value="Guardar Artículo" class="btn btn-primary">

		</form>

	</div>

	<?php

		$crearArticulo = new GestorArticulos();
		$crearArticulo -> guardarArticuloController("desarrollo");

	?>

	<hr>

	<!--==== EDITAR ARTÍCULO  ====-->

	<ul id="editarArticulo">

	<?php

		$mostrarArticulo = new GestorArticulos();
		$mostrarArticulo -> mostrarArticulosController("desarrollo");
		$mostrarArticulo -> borrarArticuloController();
		$mostrarArticulo -> editarArticuloController();

	?>

	</ul>

	<button id="ordenarArticulos" class="btn btn-warning pull-right" style="margin:10px 30px">Ordenar Desarrollos</button>

	<button id="guardarOrdenArticulos" class="btn btn-primary pull-right" style="display:none; margin:10px 30px">Guardar Orden de Desarrollos</button>

</div>

<!--====  Fin de ARTÍCULOS ADMINISTRABLE  ====-->

