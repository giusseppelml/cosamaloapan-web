<?php

require_once "backend/models/conexion.php";

class DesarrolloModels{

	public function seleccionarDesarrolloModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido, categoria FROM $tabla WHERE categoria = 'desarrollo' ORDER BY orden ASC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

}