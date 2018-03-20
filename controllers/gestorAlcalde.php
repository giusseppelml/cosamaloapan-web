<?php

class Alcalde{

	public function seleccionarAlcaldeController(){

		$respuesta = AlcaldeModels::seleccionarAlcaldeModel("articulos");

		foreach ($respuesta as $row => $item){

			echo '
<div id="articulo'.$item["id"].'">
<div class="col-md-12">
            <div class="panel panel-default coupon">
              <div class="panel-body">
              <div class="col-md-6">
              <h3>'.$item["titulo"].'</h3>
                        <p>'.$item["introduccion"].'</p>

                         <ul class="items">
                      <li style="white-space:  pre-wrap;">'.$item["contenido"].'</li>
                    </ul>
                </div>
                <div class="col-md-6">
                
                                <img src="backend/'.$item["ruta"].'" class="coupon-img img-rounded">           
</div>

              
            </div>
            </div>
      </div>
</div>


      ';

		}


	}


}