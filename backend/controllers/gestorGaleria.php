<?php

class GestorGaleria{

	#MOSTRAR IMAGEN GALERIA AJAX
	#------------------------------------------------------------
	public function mostrarImagenController($datos){

		list($ancho, $alto) = getimagesize($datos);

		if($ancho < 1024 || $alto < 768){

			echo 0;

		}

		else{

			$aleatorio = mt_rand(100, 999);

			$ruta = "../../views/images/galeria/galeria".$aleatorio.".jpg";

			$nuevo_ancho = 1024;
			$nuevo_alto = 768;

			$origen = imagecreatefromjpeg($datos);

			#imagecreatetruecolor — Crear una nueva imagen de color verdadero
			$destino = imagecreatetruecolor($nuevo_ancho, $nuevo_alto);

			#imagecopyresized() - copia una porción de una imagen a otra imagen. 

			#bool imagecopyresized( $destino, $origen, int $destino_x, int $destino_y, int $origen_x, int $origen_y, int $destino_w, int $destino_h, int $origen_w, int $origen_h)

			imagecopyresized($destino, $origen, 0, 0, 0, 0, $nuevo_ancho, $nuevo_alto, $ancho, $alto);

			imagejpeg($destino, $ruta);

			GestorGaleriaModel::subirImagenGaleriaModel($ruta, "galeria");

			$respuesta = GestorGaleriaModel::mostrarImagenGaleriaModel($ruta, "galeria");

			$enviarDatos = array("ruta"=>$respuesta["ruta"],
				                 "url"=>$respuesta["url"]);

			echo json_encode($enviarDatos);

		}

	}

	#MOSTRAR IMAGENES EN LA VISTA
	#------------------------------------------------------------

	public function mostrarImagenVistaController(){

		$respuesta = GestorGaleriaModel::mostrarImagenVistaModel("galeria");

		foreach($respuesta as $row => $item){

			echo '<li id="'.$item["id"].'" class="bloqueGaleria">
					<span class="fa fa-times eliminarFoto" ruta="'.$item["ruta"].'"></span>
					<a rel="grupo" href="'.substr($item["ruta"],6).'">
					<img src="'.substr($item["ruta"],6).'" class="handleImg">
					</a>
				</li>';

		}

	}

		#MOSTRAR IMAGENES EN EL EDITOR
	#------------------------------------------------------------

	public function editorGaleriaController(){

		$respuesta = GestorGaleriaModel::mostrarImagenVistaModel("galeria");

		foreach($respuesta as $row => $item){

			echo '<li id="item'.$item["id"].'">
					<span class="fa fa-pencil editarGaleria" style="background:blue"></span>
					<img src="'.substr($item["ruta"], 6).'" style="float:left; margin-bottom:10px" width="80%">
					<h1 style="font-size:15px;">'.$item["url"].'</h1>
				</li>';

		}

	}

	#ELIMINAR ITEM DE LA GALERIA
	#-----------------------------------------------------------
	public function eliminarGaleriaController($datos){

		$respuesta = GestorGaleriaModel::eliminarGaleriaModel($datos, "galeria");

		unlink($datos["rutaGaleria"]);

		echo $respuesta;

	}

	#ACTUALIZAR ITEM DEL GALERIA
	#-----------------------------------------------------------

	public function actualizarGaleriaController($datos){

		GestorGaleriaModel::actualizarGaleriaModel($datos, "galeria");
		$respuesta = GestorGaleriaModel::seleccionarActualizacionGaleriaModel($datos, "galeria");

		$enviarDatos = array("url"=>$respuesta["url"]);
		
		echo json_encode($enviarDatos);
	}


	#ACTUALIZAR ORDEN 
	#---------------------------------------------------
	public function actualizarOrdenController($datos){

		GestorGaleriaModel::actualizarOrdenModel($datos, "galeria");

		$respuesta = GestorGaleriaModel::seleccionarGaleriaModel("galeria");

		foreach($respuesta as $row => $item){

			echo'<li id="item'.$item["id"].'">
			     <span class="fa fa-pencil editarGaleria" style="background:blue"></span>
			     <img src="'.substr($item["ruta"], 6).'" style="float:left; margin-bottom:10px" width="80%">
			     <h1>'.$item["url"].'</h1>
			     </li>';
		}


	}

}