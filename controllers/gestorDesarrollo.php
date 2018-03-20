<?php

class Desarrollo{

	public function seleccionarDesarrolloController(){

		$respuesta = DesarrolloModels::seleccionarDesarrolloModel("articulos");

		foreach ($respuesta as $row => $item){

			echo '

                            <div class="col-md-8 col-md-offset-2">

<div id="articulo'.$item["id"].'">
 <div class="row">

                        <h2 class="title">'.$item["titulo"].'</h2>
                <h4>'.$item["introduccion"].'</h4> 
                         <center><img style="width:50%" src="backend/'.$item["ruta"].'" /></center>

        </div>
        <hr/>
                <div class="row row-eq-height" style="padding-right:15px">
            
                <p style="white-space:  pre-wrap;">'.$item["contenido"].'</p> 
           

</div>

       
</div>


</div>


                 ';

		}


	}


}