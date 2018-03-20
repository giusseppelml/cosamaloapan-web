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
	
	<button id="btnAgregarArticulo" class="btn btn-info btn-lg">Agregar Catgoria</button>

	<!--==== AGREGAR ARTÍCULO  ====-->

	<div id="agregarArtículo" style="display:none">
		
		<form method="post" enctype="multipart/form-data">

			<input name="nombreCategoria" type="text" placeholder="Nombre de la Categoria" class="form-control" required>

			<input type="file" name="imagen" class="btn btn-default" id="subirFoto" required>

			<p>Tamaño recomendado: 800px * 400px, peso máximo 2MB</p>

			<div id="arrastreImagenArticulo">	
				
			</div>

			<input type="submit" id="guardarArticulo" value="Guardar Artículo" class="btn btn-primary">

		</form>

	</div>

	<?php

		$crearArticulo = new GestorCategoriasEmpresas();
		$crearArticulo -> guardarCategoriasController();

	?>

	<hr>

	<!--==== EDITAR ARTÍCULO  ====-->

	<ul id="editarArticulo">

	<?php

		$mostrarArticulo = new GestorCategoriasEmpresas();
		$mostrarArticulo -> mostrarCategoriasController();
		$mostrarArticulo -> borrarCategoriasController();
		$mostrarArticulo -> editarCategoriasController();

	?>

	</ul>

</div>

<!--====  Fin de ARTÍCULOS ADMINISTRABLE  ====-->

