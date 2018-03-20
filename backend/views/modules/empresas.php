<?php
session_start();

if(!$_SESSION["validar"]){

	header("location:ingreso");

	exit();

}

include "views/modules/botonera.php";
include "views/modules/cabezote.php";

?>
<!--=====================================
ARTÍCULOS ADMINISTRABLE          
======================================-->

<div id="seccionArticulos" class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
	
	<button id="btnAgregarArticulo" class="btn btn-info btn-lg">Agregar Empresa</button>

	<!--==== AGREGAR ARTÍCULO  ====-->

	<div id="agregarArtículo" style="display:none">
		
		<form method="post" enctype="multipart/form-data">

			<input name="nombreEmpresa" type="text" placeholder="Título del Artículo" class="form-control" required>

			<input type="file" name="imagen" class="btn btn-default" id="subirFoto" required>

			<p>Tamaño recomendado: 800px * 400px, peso máximo 2MB</p>

			<div id="arrastreImagenArticulo">	
				
			</div>

			<input name="telefonoEmpresa" type="text" placeholder="Teléfono" class="form-control" required>

			<input name="direccionUnoEmpresa" type="text" placeholder="Dirección 1" class="form-control" required>

			<input name="direccionDosEmpresa" type="text" placeholder="Dirección 2 (Opcional)" class="form-control">

			<input name="direccionTresEmpresa" type="text" placeholder="Dirección 3 (Opcional)" class="form-control">

			<input name="direccionCuatroEmpresa" type="text" placeholder="Dirección 4 (Opcional)" class="form-control">

			<input name="direccionCincoEmpresa" type="text" placeholder="Dirección 5 (Opcional)" class="form-control">

			<input name="webSiteEmpresa" type="text" placeholder="Sitio Web" class="form-control" required>

			<input name="facebookEmpresa" type="text" placeholder="Facebook" class="form-control" required>

			<Select name="categoriaEmpresa" id="nid" class="cambio" style="width: 850px">
         <option value="---" size="300">--</option>
         <?php include("categoriasoption.php"); ?>
            </Select>

			<input type="submit" id="guardarArticulo" value="Guardar Artículo" class="btn btn-primary">

		</form>

	</div>

	<?php

		$crearArticulo = new GestorCategoriasEmpresas();
		$crearArticulo -> guardarEmpresaController();

	?>

	<hr>

	<!--==== EDITAR ARTÍCULO  ====-->

	<ul id="editarArticulo">

	<?php

		$mostrarArticulo = new GestorCategoriasEmpresas();
		$mostrarArticulo -> mostrarEmpresaController();
		$mostrarArticulo -> borrarEmpresasController();
		$mostrarArticulo -> editarEmpresasController();

	?>

	</ul>

</div>

<!--====  Fin de ARTÍCULOS ADMINISTRABLE  ====-->

