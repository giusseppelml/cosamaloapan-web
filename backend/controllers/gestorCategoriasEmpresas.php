<?php

class GestorCategoriasEmpresas{

	#MOSTRAR IMAGEN CATEGORIA
	#------------------------------------------------------------
	public function mostrarImagenController($datos){

		list($ancho, $alto) = getimagesize($datos);

		if($ancho < 800 || $alto < 400){

			echo 0;

		}

		else{

			$aleatorio = mt_rand(100, 999);
			$ruta = "../../views/images/articulos/temp/articulo".$aleatorio.".jpg";
			$origen = imagecreatefromjpeg($datos);
			$destino = imagecrop($origen, ["x"=>0, "y"=>0, "width"=>800, "height"=>400]);
			imagejpeg($destino, $ruta);

			echo $ruta;
		}

	}

	#GUARDAR CATEGORIA
	#-----------------------------------------------------------

	public function guardarCategoriasController(){

		if(isset($_POST["nombreCategoria"])){

			$imagen = $_FILES["imagen"]["tmp_name"];

			$borrar = glob("views/images/articulos/temp/*");

			foreach($borrar as $file){

				unlink($file);

			}

			$aleatorio = mt_rand(100, 999);

			$ruta = "views/images/articulos/articulo".$aleatorio.".jpg";

			$origen = imagecreatefromjpeg($imagen);

			$destino = imagecrop($origen, ["x"=>0, "y"=>0, "width"=>800, "height"=>400]);

			imagejpeg($destino, $ruta);

			$datosController = array("nombre"=>$_POST["nombreCategoria"],
			 	                      "logo"=>$ruta);

			$respuesta = GestorCategoriasEmpresasModel::guardarCategoriasModel($datosController, "categoria");

			if($respuesta == "ok"){

				echo'<script>

					swal({
						  title: "¡OK!",
						  text: "¡La categoria ha sido creado correctamente!",
						  type: "success",
						  confirmButtonText: "Cerrar",
						  closeOnConfirm: false
					},

					function(isConfirm){

							 if (isConfirm) {	   
							    window.location = "categorias";
							  } 
					});


				</script>';

			}

			else{

				echo $respuesta;

			}

		}

	}

	#MOSTRAR CATEGORIA
	#-----------------------------------------------------------

	public function mostrarCategoriasController(){

		$respuesta = GestorCategoriasEmpresasModel::mostrarCategoriasModel("categoria");		

		foreach($respuesta as $row => $item) {

			echo ' <li id="'.$item["id"].'" class="bloqueArticulo">
					<span class="handleArticle">
					<a href="index.php?action=categorias&idBorrar='.$item["id"].'&rutaImagen='.$item["logo"].'">
						<i class="fa fa-times btn btn-danger"></i>
					</a>
					<i class="fa fa-pencil btn btn-primary editarCategorias"></i>	
					</span>
					<img src="'.$item["logo"].'" class="img-thumbnail">
					<h1>'.$item["categoria"].'</h1>
					<a href="#articulo'.$item["id"].'" data-toggle="modal">
					<button class="btn btn-default">Leer Más</button>
					</a>

					<hr>

				</li>

				<div id="articulo'.$item["id"].'" class="modal fade">

					<div class="modal-dialog modal-content">

						<div class="modal-header" style="border:1px solid #eee">
				        
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						 <h3 class="modal-title">'.$item["categoria"].'</h3>
			        
						</div>

						<div class="modal-body" style="border:1px solid #eee">
			        
							<img src="'.$item["logo"].'" width="100%" style="margin-bottom:20px">
			        
						</div>

						<div class="modal-footer" style="border:1px solid #eee">
			        
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        
						</div>

					</div>

				</div>';

		}

	}

	#BORRAR CATEGORIA
	#------------------------------------

	public function borrarCategoriasController(){

		if(isset($_GET["idBorrar"])){

			unlink($_GET["rutaImagen"]);

			$datosController = $_GET["idBorrar"];

			$respuesta = GestorCategoriasEmpresasModel::borrarCategoriasModel($datosController, "categoria");

			if($respuesta == "ok"){

					echo'<script>

					swal({
						  title: "¡OK!",
						  text: "¡La categoria se ha borrado correctamente!",
						  type: "success",
						  confirmButtonText: "Cerrar",
						  closeOnConfirm: false
					},

					function(isConfirm){
							 if (isConfirm) {	   
							    window.location = "categorias";
							  } 
					});


				</script>';

			}
		}

	}

	#ACTUALIZAR CATEGORIA
	#-----------------------------------------------------------

	public function editarCategoriasController(){

		$ruta = "";

		if(isset($_POST["editarCatego"])){

			if(isset($_FILES["editarImagen"]["tmp_name"])){	

				$imagen = $_FILES["editarImagen"]["tmp_name"];

				$aleatorio = mt_rand(100, 999);

				$ruta = "views/images/articulos/articulo".$aleatorio.".jpg";

				$origen = imagecreatefromjpeg($imagen);

				$destino = imagecrop($origen, ["x"=>0, "y"=>0, "width"=>800, "height"=>400]);

				imagejpeg($destino, $ruta);

				$borrar = glob("views/images/articulos/temp/*");

				foreach($borrar as $file){
				
					unlink($file);
				
				}

			}

			if($ruta == ""){

				$ruta = $_POST["fotoAntigua"];

			}

			else{

				unlink($_POST["fotoAntigua"]);

			}

			$datosController = array("id"=>$_POST["id"],
			                         "categoria"=>$_POST["editarCatego"],
								     "logo"=>$ruta);

			$respuesta = GestorCategoriasEmpresasModel::editarCategoriasModel($datosController, "categoria");

			if($respuesta == "ok"){

				echo'<script>

					swal({
						  title: "¡OK!",
						  text: "¡El artículo ha sido actualizado correctamente!",
						  type: "success",
						  confirmButtonText: "Cerrar",
						  closeOnConfirm: false
					},

					function(isConfirm){
							 if (isConfirm) {	   
							    window.location = "categorias";
							  } 
					});


				</script>';

			}

			else{

				echo $respuesta;

			}

		}

	}

	#ACTUALIZAR ORDEN 
	#---------------------------------------------------
	public function actualizarOrdenController($datos){

		GestorCategoriasEmpresasModel::actualizarOrdenModel($datos, "articulos");

		$respuesta = GestorCategoriasEmpresasModel::seleccionarOrdenModel("articulos");

		foreach($respuesta as $row => $item){

			echo ' <li id="'.$item["id"].'" class="bloqueArticulo">
					<span class="handleArticle">
					<a href="index.php?action=articulos&idBorrar='.$item["id"].'&rutaImagen='.$item["ruta"].'">
						<i class="fa fa-times btn btn-danger"></i>
					</a>
					<i class="fa fa-pencil btn btn-primary editarCategorias"></i>	
					</span>
					<img src="'.$item["ruta"].'" class="img-thumbnail">
					<h1>'.$item["titulo"].'</h1>
					<p>'.$item["introduccion"].'</p>
					<input type="hidden" value="'.$item["contenido"].'">
					<a href="#articulo'.$item["id"].'" data-toggle="modal">
					<button class="btn btn-default">Leer Más</button>
					</a>

					<hr>

				</li>

				<div id="articulo'.$item["id"].'" class="modal fade">

					<div class="modal-dialog modal-content">

						<div class="modal-header" style="border:1px solid #eee">
				        
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						 <h3 class="modal-title">'.$item["titulo"].'</h3>
			        
						</div>

						<div class="modal-body" style="border:1px solid #eee">
			        
							<img src="'.$item["ruta"].'" width="100%" style="margin-bottom:20px">
							<p class="parrafoContenido">'.$item["contenido"].'</p>
			        
						</div>

						<div class="modal-footer" style="border:1px solid #eee">
			        
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        
						</div>

					</div>

				</div>';

		}


	}


	//AQUI TERMINA CATEGORIAS-----------------------------------------------------
	//AQUI EMPIEZA EMPRESAS-------------------------------------------------------

	#GUARDAR EMPRESA
	#------------------------------------

	public function guardarEmpresaController(){

		if(isset($_POST["nombreEmpresa"])){

			$imagen = $_FILES["imagen"]["tmp_name"];

			$borrar = glob("views/images/articulos/temp/*");

			foreach($borrar as $file){

				unlink($file);

			}

			$aleatorio = mt_rand(100, 999);

			$ruta = "views/images/articulos/articulo".$aleatorio.".jpg";

			$origen = imagecreatefromjpeg($imagen);

			$destino = imagecrop($origen, ["x"=>0, "y"=>0, "width"=>800, "height"=>400]);

			imagejpeg($destino, $ruta);

			$datosController = array("nombre"=>$_POST["nombreEmpresa"],
			 	                      "telefono"=>$_POST["telefonoEmpresa"],
			 	              	  	  "direccionuno"=>$_POST["direccionUnoEmpresa"],
			 	          			  "direcciondos"=>$_POST["direccionDosEmpresa"],
			 	      				  "direcciontres"=>$_POST["direccionTresEmpresa"],
			 	  					  "direccioncuatro"=>$_POST["direccionCuatroEmpresa"],
			 	  					  "direccioncinco"=>$_POST["direccionCincoEmpresa"],
			 	  				      "site"=>$_POST["webSiteEmpresa"],
			 	  			          "facebook"=>$_POST["facebookEmpresa"],
			 	  		   			  "categoria"=>$_POST["categoriaEmpresa"],
			 	  		   			  "logo"=>$ruta);

			$respuesta = GestorCategoriasEmpresasModel::guardarEmpresasModel($datosController, "empresa");

			if($respuesta == "ok"){

				echo'<script>

					swal({
						  title: "¡OK!",
						  text: "¡La categoria ha sido creado correctamente!",
						  type: "success",
						  confirmButtonText: "Cerrar",
						  closeOnConfirm: false
					},

					function(isConfirm){

							 if (isConfirm) {	   
							    window.location = "empresas";
							  } 
					});


				</script>';

			}

			else{

				echo $respuesta;

			}

		}

	}

	#MOSTRAR EMPRESAS
	#------------------------------------

	public function mostrarEmpresaController(){

		$respuesta = GestorCategoriasEmpresasModel::mostrarEmpresasModel("empresa");		

		foreach($respuesta as $row => $item) {

			echo ' <li id="'.$item["id"].'" class="bloqueArticulo">
					<span class="handleArticle">
					<a href="index.php?action=empresas&idBorrar='.$item["id"].'&rutaImagen='.$item["nombre"].'">
						<i class="fa fa-times btn btn-danger"></i>
					</a>
					<i class="fa fa-pencil btn btn-primary editarEmpresa"></i>	
					</span>
					<img src="'.$item["imagen"].'" class="img-thumbnail">
					<b>'.$item["nombre"].'</b>
					<t>'.$item["telefono"].'</t>
					<input type="hidden" value="'.$item["direccionuno"].'">
					<a href="#articulo'.$item["id"].'" data-toggle="modal">
					<button class="btn btn-default">Leer Más</button>
					</a>

					<hr>

				</li>

				<div id="articulo'.$item["id"].'" class="modal fade">

					<div class="modal-dialog modal-content">

						<div class="modal-header" style="border:1px solid #eee">
				        
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						 <h3 class="modal-title">'.$item["nombre"].'</h3>
			        
						</div>

						<div class="modal-body" style="border:1px solid #eee">
			        
							<img src="'.$item["imagen"].'" width="100%" style="margin-bottom:20px">
			        
						</div>

						<p class="parrafoContenido">'.$item["telefono"].'</p>
						<p class="parrafoContenido">'.$item["direccionuno"].'</p>
						<p class="parrafoContenido">'.$item["direcciondos"].'</p>
					    <p class="parrafoContenido">'.$item["direcciontres"].'</p>

						<div class="modal-footer" style="border:1px solid #eee">
			        
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        
						</div>

					</div>

				</div>';

		}

	}

	#BORRAR EMPRESA
	#------------------------------------

	public function borrarEmpresasController(){

		if(isset($_GET["idBorrar"])){

			unlink($_GET["rutaImagen"]);

			$datosController = $_GET["idBorrar"];

			$respuesta = GestorCategoriasEmpresasModel::borrarEmpresasModel($datosController, "empresa");

			if($respuesta == "ok"){

					echo'<script>

					swal({
						  title: "¡OK!",
						  text: "¡La empresa se ha borrado correctamente!",
						  type: "success",
						  confirmButtonText: "Cerrar",
						  closeOnConfirm: false
					},

					function(isConfirm){
							 if (isConfirm) {	   
							    window.location = "empresas";
							  } 
					});


				</script>';

			}
		}

	}

	public function editarEmpresasController(){

		$ruta = "";

		if(isset($_POST["editarTitulo"])){

			if(isset($_FILES["editarImagen"]["tmp_name"])){	

				$imagen = $_FILES["editarImagen"]["tmp_name"];

				$aleatorio = mt_rand(100, 999);

				$ruta = "views/images/articulos/articulo".$aleatorio.".jpg";

				$origen = imagecreatefromjpeg($imagen);

				$destino = imagecrop($origen, ["x"=>0, "y"=>0, "width"=>800, "height"=>400]);

				imagejpeg($destino, $ruta);

				$borrar = glob("views/images/articulos/temp/*");

				foreach($borrar as $file){
				
					unlink($file);
				
				}

			}

			if($ruta == ""){

				$ruta = $_POST["fotoAntigua"];

			}

			else{

				unlink($_POST["fotoAntigua"]);

			}

			$datosController = array("id"=>$_POST["id"],
			                         "nombre"=>$_POST["editarTitulo"],
								     "telefono"=>$_POST["editarTel"],
								     "direccionuno"=>$_POST["editarDirUno"],
								     "direcciondos"=>$_POST["editarDirDos"],
									 "direcciontres"=>$_POST["editarDirTres"],
									 "direccioncuatro"=>$_POST["editarContenido"],
									 "direccioncinco"=>$_POST["editarContenido"],
									 "site"=>$_POST["editarContenido"],
									 "facebook"=>$_POST["editarContenido"],
									 "categoria"=>$_POST["editarContenido"],
									 "logo"=>$ruta);

			$respuesta = GestorCategoriasEmpresasModel::editarEmpresasModel($datosController, "empresa");

			if($respuesta == "ok"){

				echo'<script>

					swal({
						  title: "¡OK!",
						  text: "¡El artículo ha sido actualizado correctamente!",
						  type: "success",
						  confirmButtonText: "Cerrar",
						  closeOnConfirm: false
					},

					function(isConfirm){
							 if (isConfirm) {	   
							    window.location = "empresas";
							  } 
					});


				</script>';

			}

			else{

				echo $respuesta;

			}

		}

	}

}