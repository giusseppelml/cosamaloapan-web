<?php

require_once "conexion.php";

class GestorCategoriasEmpresasModel{

	#GUARDAR ARTICULO
	#------------------------------------------------------------

	public function guardarCategoriasModel($datosModel, $tabla){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (categoria, logo) VALUES (:nombre, :logo)");

		$stmt -> bindParam(":nombre", $datosModel["nombre"], PDO::PARAM_STR);
		$stmt -> bindParam(":logo", $datosModel["logo"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";
		}

		else{

			return "error";
		}

		$stmt->close();

	}

	#MOSTRAR ARTÍCULOS
	#------------------------------------------------------
	public function mostrarCategoriasModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, categoria, logo FROM $tabla");

		$stmt -> execute();

		return $stmt -> fetchAll();

		$stmt -> close();

	}

	#BORRAR ARTICULOS
	#-----------------------------------------------------
	public function borrarCategoriasModel($datosModel, $tabla){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt->bindParam(":id", $datosModel, PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}

		else{

			return "error";

		}

		$stmt->close();

	}

	#ACTUALIZAR ARTICULOS
	#---------------------------------------------------
	public function editarCategoriasModel($datosModel, $tabla){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET categoria = :categoria, logo = :logo WHERE id = :id");	

		$stmt -> bindParam(":categoria", $datosModel["categoria"], PDO::PARAM_STR);
		$stmt -> bindParam(":logo", $datosModel["logo"], PDO::PARAM_STR);
		$stmt -> bindParam(":id", $datosModel["id"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";
		}

		else{

			return "error";
		}

		$stmt->close();

	}

	#ACTUALIZAR ORDEN 
	#---------------------------------------------------
	public function actualizarOrdenModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET orden = :orden WHERE id = :id");

		$stmt -> bindParam(":orden", $datos["ordenItem"], PDO::PARAM_STR);
		$stmt -> bindParam(":id", $datos["ordenArticulos"], PDO::PARAM_INT);

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

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido FROM $tabla ORDER BY orden ASC");

		$stmt -> execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

	//AQUI TERMINA CATEGORIAS-------------------------------------------------------------
	//AQUI EMPIEZA EMPRESAS---------------------------------------------------------------

	#GUARDAR EMPRESAS
	#------------------------------------------------------------

	public function guardarEmpresasModel($datosModel, $tabla){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (nombre, telefono, direccionuno, direcciondos, direcciontres, direccioncuatro, direccioncinco, website, facebook, categoria, imagen) VALUES (:nombre, :telefono, :direccionuno, :direcciondos, :direcciontres, :direccioncuatro, :direccioncinco, :website, :facebook, :categoria, :imagen)");

		$stmt -> bindParam(":nombre", $datosModel["nombre"], PDO::PARAM_STR);
		$stmt -> bindParam(":telefono", $datosModel["telefono"], PDO::PARAM_STR);
		$stmt -> bindParam(":direccionuno", $datosModel["direccionuno"], PDO::PARAM_STR);
		$stmt -> bindParam(":direcciondos", $datosModel["direcciondos"], PDO::PARAM_STR);
		$stmt -> bindParam(":direcciontres", $datosModel["direcciontres"], PDO::PARAM_STR);
		$stmt -> bindParam(":direccioncuatro", $datosModel["direccioncuatro"], PDO::PARAM_STR);
		$stmt -> bindParam(":direccioncinco", $datosModel["direccioncinco"], PDO::PARAM_STR);
		$stmt -> bindParam(":website", $datosModel["site"], PDO::PARAM_STR);
		$stmt -> bindParam(":facebook", $datosModel["facebook"], PDO::PARAM_STR);
		$stmt -> bindParam(":categoria", $datosModel["categoria"], PDO::PARAM_STR);
		$stmt -> bindParam(":imagen", $datosModel["logo"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";
		}

		else{

			return "error";
		}

		$stmt->close();

	}

	public function mostrarEmpresasModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, nombre, telefono, direccionuno, direcciondos, direcciontres, direccioncuatro, direccioncinco, website, facebook, categoria, imagen FROM $tabla");

		$stmt -> execute();

		return $stmt -> fetchAll();

		$stmt -> close();

	}

	#BORRAR ARTICULOS
	#-----------------------------------------------------
	public function borrarEmpresasModel($datosModel, $tabla){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt->bindParam(":id", $datosModel, PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}

		else{

			return "error";

		}

		$stmt->close();

	}

	public function editarEmpresasModel($datosModel, $tabla){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre = :nombre, telefono = :telefono, direccionuno = :direccionuno, direcciondos = :direcciondos, direcciontres = :direcciontres, direccioncuatro = :direccioncuatro, direccioncinco = :direccioncinco, website = :website, facebook = :facebook, categoria = :categoria, imagen = :imagen WHERE id = :id");	

		$stmt -> bindParam(":nombre", $datosModel["nombre"], PDO::PARAM_STR);
		$stmt -> bindParam(":telefono", $datosModel["telefono"], PDO::PARAM_STR);
		$stmt -> bindParam(":direccionuno", $datosModel["direccionuno"], PDO::PARAM_STR);
		$stmt -> bindParam(":direcciondos", $datosModel["direcciondos"], PDO::PARAM_STR);
		$stmt -> bindParam(":direcciontres", $datosModel["direcciontres"], PDO::PARAM_STR);
		$stmt -> bindParam(":direccioncuatro", $datosModel["direccioncuatro"], PDO::PARAM_STR);
		$stmt -> bindParam(":direccioncinco", $datosModel["direccioncinco"], PDO::PARAM_STR);
		$stmt -> bindParam(":website", $datosModel["site"], PDO::PARAM_STR);
		$stmt -> bindParam(":facebook", $datosModel["facebook"], PDO::PARAM_STR);
		$stmt -> bindParam(":categoria", $datosModel["categoria"], PDO::PARAM_STR);
		$stmt -> bindParam(":imagen", $datosModel["logo"], PDO::PARAM_STR);
		$stmt -> bindParam(":id", $datosModel["id"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";
		}

		else{

			return "error";
		}

		$stmt->close();

	}
	
}