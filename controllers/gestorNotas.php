<?php

class Notas{

	public function seleccionarNotasController($id, $cat){

		$respuesta = NotasModels::seleccionarNotasModel("articulos", $id, $cat);

		foreach ($respuesta as $row => $item){

			echo '
<html>

<head>
  <title>'.$item["titulo"].'</title>
</head>
			
			
<ol class="breadcrumb">
  <li><a href="http://cosamaloapan.gob.mx/">Inicio</a></li>
  <li><a href="http://cosamaloapan.gob.mx/'.$item["categoria"].'">'.$item["categoria"].'</a></li>
  <li class="active">'.$item["titulo"].'</li>
</ol>
			




<div id="articulo'.$item["id"].'">

            	<h1 class="text-center">'.$item["titulo"].'</h1>
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
                     
<a href="http://www.facebook.com/sharer.php?u=http%3a%2f%2fcosamaloapan.gob.mx%2fnotas%3fvaruno%3d'.$item["categoria"].'%26vardos%3d'.$item["id"].'" target="_blank">


                     <img src="../views/images/shared.png">
                     </a>
                     
                     

                     <hr>
                 </div>
                

</div>



                 ';

		}


	}


}