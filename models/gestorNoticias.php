<?php

require_once "backend/models/conexion.php";

class NoticiasModels{

	public function seleccionarNoticiasModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido, fecha FROM $tabla WHERE categoria = 'noticias' ORDER BY id DESC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

}