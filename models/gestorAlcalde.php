<?php

require_once "backend/models/conexion.php";

class AlcaldeModels{

	public function seleccionarAlcaldeModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido FROM $tabla WHERE categoria = 'alcalde' ORDER BY orden ASC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}
}