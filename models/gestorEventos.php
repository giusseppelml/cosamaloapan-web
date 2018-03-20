<?php

require_once "backend/models/conexion.php";

class EventosModels{

	public function seleccionarEventosModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido, fecha FROM $tabla WHERE categoria = 'eventos' ORDER BY id DESC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

}