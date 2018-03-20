<?php

require_once "backend/models/conexion.php";

class ArticulosModels{

	public function seleccionarArticulosModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido FROM $tabla WHERE categoria = 'noticias' ORDER BY orden ASC LIMIT 4");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

}