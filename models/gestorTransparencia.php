<?php

require_once "backend/models/conexion.php";

class TransparenciaModels{

	public function seleccionarTransparenciaModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, introduccion, ruta, contenido, fecha FROM $tabla WHERE categoria = 'portal' ORDER BY orden ASC");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}

}