<?php

require_once "backend/models/conexion.php";

class TramitesModels{

	public function seleccionarTramitesModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido FROM $tabla WHERE categoria = 'tramites'");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}
}