<?php

require_once "backend/models/conexion.php";

class EducacionModels{

	public function seleccionarEducacionModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido, fecha FROM $tabla WHERE categoria = 'educacion' ORDER BY orden ASC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

}