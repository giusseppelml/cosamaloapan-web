<?php

class EnlacesModels{

	static public function enlacesModel($enlaces){

		if($enlaces == "inicio" ||
		   $enlaces == "ingreso" ||
		   $enlaces == "slide" ||
		   $enlaces == "articulos" ||
		   $enlaces == "eventos" ||
		   $enlaces == "desarrollo" ||
		   $enlaces == "directorio" ||
		   $enlaces == "alcalde" ||
		   $enlaces == "tramites" ||
		   $enlaces == "bolsa" ||
		   $enlaces == "salud" ||
		   $enlaces == "educacion" ||
		   $enlaces == "portal" ||
		   $enlaces == "galeria" ||
		   $enlaces == "videos" ||
		   $enlaces == "suscriptores" ||
		   $enlaces == "mensajes" ||
		   $enlaces == "perfil" ||
		   $enlaces == "categorias" ||
		   $enlaces == "empresas" ||
		   $enlaces == "salir"){

			$module = "views/modules/".$enlaces.".php";
		}	

		else if($enlaces == "index"){
			$module = "views/modules/ingreso.php";
		}

		else{
			$module = "views/modules/ingreso.php";		
		}

		return $module;

	}


}