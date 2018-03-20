<?php

require_once "backend/models/conexion.php";

class DirectorioModels{

	public function seleccionarDirectorioModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido FROM $tabla WHERE categoria = 'directorio' ORDER BY orden ASC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}
}