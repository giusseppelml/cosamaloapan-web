<?php

require_once "backend/models/conexion.php";

class TrabajoModels{

	public function seleccionarTrabajoModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido FROM $tabla WHERE categoria = 'trabajo' ORDER BY orden ASC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}
}