<?php

class Trabajo{

	public function seleccionarTrabajoController(){

		$respuesta = TrabajoModels::seleccionarTrabajoModel("articulos");

		foreach ($respuesta as $row => $item){

			echo '
<div data-filter-item data-filter-name="'.$item["titulo"].'">


<div class="col-md-8">
            <div class="panel panel-default coupon">
              <div class="panel-body">
              <div class="col-md-8">
              <h3>'.$item["titulo"].'</h3>
                        <p>'.$item["introduccion"].'</p>



                        <a href="#articulo'.$item["id"].'" data-toggle="modal">
          <button class="btn btn-default">Leer Más</button>
          </a>
                </div>

                <div class="col-md-3">
<img src="backend/'.$item["ruta"].'" class="img-responsive" >
                </div>

              
            </div>
            </div>
      </div>


    </div>




            <div id="articulo'.$item["id"].'" class="modal fade">
      
          <div class="modal-dialog modal-content">

            <div class="modal-header" style="border:1px solid #eee">
                  
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title">'.$item["titulo"].'</h3>
                  
            </div>

            <div class="modal-body" style="border:1px solid #eee">
                  
                <img src="backend/'.$item["ruta"].'" width="100%" style="margin-bottom:20px">
                <p class="parrafoContenido text-justify">'.$item["contenido"].'</p>
                  
            </div>


          </div>

        </div>

        

';

		}


	}


}