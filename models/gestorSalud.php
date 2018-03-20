<?php

require_once "backend/models/conexion.php";

class SaludModels{

	public function seleccionarSaludModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido, fecha FROM $tabla WHERE categoria = 'salud' ORDER BY orden ASC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

}