<?php

class Conexion{

	public function conectar(){

		$link = new PDO("mysql:host=localhost;dbname=cosamalo_basepagina","cosamalo_adminpa","Cosa5523@admin");
		return $link;

	}

}