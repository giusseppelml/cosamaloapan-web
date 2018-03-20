<?php

require_once "backend/models/conexion.php";

class NotasModels{

	public function seleccionarNotasModel($tabla, $id, $not){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido, categoria, fecha FROM $tabla WHERE id = $id && categoria = '$not'");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

}