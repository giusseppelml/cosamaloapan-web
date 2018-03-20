<?php

class Galeria{

	public function seleccionarGaleriaController(){

		$respuesta = GaleriaModels::seleccionarGaleriaModel("galeria");

		foreach ($respuesta as $row => $item){

			echo '<div class="item"><div class="col-md-2 col-sm-6 col-xs-12 p10"><a href="'.$item["url"].'"><img src="backend/'.substr($item["ruta"], 6).'" class="img-responsive" alt="Reference"></a></div></div>';

		}

	}

}


