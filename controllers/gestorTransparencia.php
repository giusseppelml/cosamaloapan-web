<?php

class Transparencia{

	public function seleccionarTransparenciaController(){

		$respuesta = TransparenciaModels::seleccionarTransparenciaModel("articulos");

		foreach ($respuesta as $row => $item){

			echo '
<div id="articulo'.$item["id"].'">
            	<h1 class="text-center">'.$item["titulo"].'</h1>
                <ul class="list-inline text-center">
                    <li>'.$item["fecha"].'</li>
                </ul>
                <br/>

<p>'.$item["introduccion"].'</p>
                <blockquote>
  <p>'.$item["contenido"].'</p>
  
</blockquote>

                 <div class="image-block">
                     <img src="backend/'.$item["ruta"].'" class="img-responsive" >
                     <hr>
                     <hr>
                 </div>
                

</div>



                 ';

		}


	}


}