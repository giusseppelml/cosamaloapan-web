<?php

class Directorio{

	public function seleccionarDirectorioController(){

		$respuesta = DirectorioModels::seleccionarDirectorioModel("articulos");

		foreach ($respuesta as $row => $item){

			echo '
<div id="articulo'.$item["id"].'">
<div class="col-xs-8 col-sm-8  col-md-6 col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading resume-heading">
        <div class="row">
          <div class="col-lg-12">
            <div class="col-xs-12 col-sm-4">
              <figure>
                <img class="img img-responsive" alt="" src="backend/'.$item["ruta"].'">
              </figure>
             </div>
            <div class="col-xs-12 col-sm-8">
              <ul class="list-group">
                <li class="list-group-item">'.$item["titulo"].'</li>
                <li class="list-group-item">'.$item["introduccion"].'</li>
                <li class="list-group-item">'.$item["contenido"].'</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    
  </div>
</div>
</div>

                 ';

		}


	}


}