<?php

require_once "conexion.php";

class GestorGaleriaModel{

	#SUBIR LA RUTA DE LA IMAGEN
	#------------------------------------------------------------
	public function subirImagenGaleriaModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (ruta) VALUES (:ruta)");

		$stmt -> bindParam(":ruta", $datos, PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";
		}
		else{

			return "error";
		}

		$stmt->close();
	}

	#SELECCIONAR LA RUTA DE LA IMAGEN
	#------------------------------------------------------------
	public function mostrarImagenGaleriaModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("SELECT ruta, url FROM $tabla WHERE ruta = :ruta");

		$stmt -> bindParam(":ruta", $datos, PDO::PARAM_STR);

		$stmt -> execute();

		return $stmt -> fetch();

		$stmt -> close();

	}

	#MOSTRAR IMAGEN EN LA VISTA
	#---------------------------------------------------------
	public function mostrarImagenVistaModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, ruta, url FROM $tabla ORDER BY orden ASC");

		$stmt -> execute();

		return $stmt -> fetchAll();

		$stmt -> close();

	}

	#ELIMINAR ITEM DE LA GALERIA
	#-----------------------------------------------------------

	public function eliminarGaleriaModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt -> bindParam(":id", $datos["idGaleria"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";
		}

		else{

			return "error";
		}

		$stmt->close();

	}


	#ACTUALIZAR ITEM DEL SLIDE
	#-----------------------------------------------------------
	public function actualizarGaleriaModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET url = :url WHERE id = :id");	

		$stmt -> bindParam(":url", $datos["enviarUrl"], PDO::PARAM_STR);
		$stmt -> bindParam(":id", $datos["enviarId"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";
		}

		else{

			return "error";
		}

		$stmt->close();

	}

	#SELECCIONAR ITEM DEL SLIDE
	#-----------------------------------------------------------

	public function seleccionarActualizacionGaleriaModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("SELECT url FROM $tabla WHERE id = :id");

		$stmt -> bindParam(":id", $datos["enviarId"], PDO::PARAM_INT);

		$stmt -> execute();

		return $stmt -> fetch();

		$stmt -> close();

	}

	#ACTUALIZAR ORDEN 
	#---------------------------------------------------

	public function actualizarOrdenModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET orden = :orden WHERE id = :id");

		$stmt -> bindParam(":orden", $datos["ordenItem"], PDO::PARAM_INT);
		$stmt -> bindParam(":id", $datos["ordenGaleria"], PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		}

		else{
			return "error";
		}

		$stmt -> close();

	}

	#SELECCIONAR ORDEN 
	#---------------------------------------------------

	public function seleccionarOrdenModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, ruta, url FROM $tabla ORDER BY orden ASC");

		$stmt -> execute();

		return $stmt->fetchAll();

		$stmt->close();

	}


}