<?php

require_once "../../models/gestorGaleria.php";
require_once "../../controllers/gestorGaleria.php";

#CLASE Y MÉTODOS
#-------------------------------------------------------------
class Ajax{

	#SUBIR LA IMAGEN DE LA GALERIA
	#----------------------------------------------------------
	public $imagenTemporal;

	public function gestorGaleriaAjax(){

		$datos = $this->imagenTemporal;

		$respuesta = GestorGaleria::mostrarImagenController($datos);

		echo $respuesta;

	}

	#ELIMINAR ITEM GALERIA
	#----------------------------------------------------------

	public $idGaleria;
	public $rutaGaleria;

	public function eliminarGaleriaAjax(){

		$datos = array("idGaleria" => $this->idGaleria, 
					   "rutaGaleria" => $this->rutaGaleria);

		$respuesta = GestorGaleria::eliminarGaleriaController($datos);

		echo $respuesta;

	}


	#ACTUALIZAR ITEM GALERIA
	#----------------------------------------------------------
	public $enviarId;
	public $enviarUrl;

	public function actualizarGaleriaAjax(){

		$datos = array("enviarId" => $this->enviarId, 
			           "enviarUrl" => $this->enviarUrl);

		$respuesta = GestorGaleria::actualizarGaleriaController($datos);

		echo $respuesta;

	}

	#ACTUALIZAR ORDEN
	#---------------------------------------------
	public $actualizarOrdenGaleria;
	public $actualizarOrdenItem;

	public function actualizarOrdenAjax(){
	
		$datos = array("ordenGaleria" => $this->actualizarOrdenGaleria,
			           "ordenItem" => $this->actualizarOrdenItem);

		$respuesta = GestorGaleria::actualizarOrdenController($datos);

		echo $respuesta;

	}

}

#OBJETOS
#-----------------------------------------------------------
if(isset($_FILES["imagen"]["tmp_name"])){

	$a = new Ajax();
	$a -> imagenTemporal = $_FILES["imagen"]["tmp_name"];
	$a -> gestorGaleriaAjax();

}

if(isset($_POST["idGaleria"])){

	$b = new Ajax();
	$b -> idGaleria = $_POST["idGaleria"];
	$b -> rutaGaleria = $_POST["rutaGaleria"];
	$b -> eliminarGaleriaAjax();	

}

if(isset($_POST["enviarId"])){

	$c = new Ajax();
	$c -> enviarId = $_POST["enviarId"];
	$c -> enviarUrl = $_POST["enviarUrl"];
	$c -> actualizarGaleriaAjax();	

}

if(isset($_POST["actualizarOrdenGaleria"])){

	$d = new Ajax();
	$d -> actualizarOrdenGaleria = $_POST["actualizarOrdenGaleria"];
	$d -> actualizarOrdenItem = $_POST["actualizarOrdenItem"];
	$d -> actualizarOrdenAjax();

}