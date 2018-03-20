<?php

require_once "backend/models/conexion.php";

class TurismoModels{

	public function seleccionarTurismoModel($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT empresa.id, empresa.nombre, empresa.telefono, empresa.direccionuno, empresa.direcciondos, empresa.direcciontres, empresa.direccioncuatro, empresa.direccioncinco, empresa.website, empresa.facebook, categoria.categoria, empresa.imagen FROM $tabla Inner Join categoria ON empresa.categoria = categoria.id");

		$stmt->execute();

		return $stmt->fetchAll();

		$stmt->close();

	}
}