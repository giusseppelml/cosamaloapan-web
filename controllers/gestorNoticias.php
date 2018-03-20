<?php

class Noticias{

	public function seleccionarNoticiasController(){

		$respuesta = NoticiasModels::seleccionarNoticiasModel("articulos");

		foreach ($respuesta as $row => $item){

			echo '
<div id="articulo'.$item["id"].'" method="post">
            	<h1 class="text-center"><a href="notas?varuno=noticias&vardos='.$item["id"].'">'.$item["titulo"].'</a></h1>
                <ul class="list-inline text-center">
                    <li>'.$item["fecha"].'</li>
                </ul>
                <br/>

<p>'.$item["introduccion"].'</p>
                <blockquote>
  <p style="white-space:  pre-wrap;">'.$item["contenido"].'</p>
  
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