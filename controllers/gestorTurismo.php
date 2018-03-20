<?php

class Turismo{

	public function seleccionarTurismoController(){

		$respuesta = TurismoModels::seleccionarTurismoModel("empresa");

		foreach ($respuesta as $row => $item){

			echo '

<div data-filter-item data-filter-name="'.$item["nombre"].'">



   <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 mb40">
                    <div class="menu-block">
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="backend/'.$item["imagen"].'" alt="" ></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">'.$item["nombre"].'</a></h5>
                                        <span class="dish-meta">'.$item["categoria"].'</span>
                                        <div class="dish-price">
                                        
                                        <ul class="fa-ul">
                        <li><a href="'.$item["facebook"].'" target="_blank"><i class="fa-li fa fa-facebook-official"></i></a><br></li>
                        <li><a href="'.$item["website"].'" target="_blank"><i class="fa-li fa fa-globe"></i></a><br></li>

                        <li><a href="#articulo'.$item["id"].'" data-toggle="modal"><i class="fa-li fa fa-plus"></i></a><br></li>
                    </ul>


                                    </div>
                                    </div>
                                 </div>
                            </div>
                        </div>

                    </div>


                </div>


    </div>



            <div id="articulo'.$item["id"].'" class="modal fade">
      
          <div class="modal-dialog modal-content">

            <div class="modal-header" style="border:1px solid #eee">
                  
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title">'.$item["nombre"].'</h3>
                  
            </div>
            <div class="modal-body" style="border:1px solid #eee">

<div class="healthy-snacks">
  <div class="featured-imag">
    <img src="backend/'.$item["imagen"].'">
    <div class="arrow"></div>
  </div>
  <article>
    <header>
      <h3><span>'.$item["nombre"].'</span></h3>
    </header>
    <div class="excerpt">
      <p>'.$item["direccionuno"].'</p>
      <p>'.$item["direcciondos"].'</p>
      <p>'.$item["direcciontres"].'</p>
      <p>'.$item["direccioncuatro"].'</p>
      <p>'.$item["direccioncinco"].'</p>




      <a href="#""><span class="fa fa-phone"></span><span>'.$item["telefono"].'</span></a>
    </div>
  </article>
</div>

                  
            </div>


          </div>

        </div>


      ';

		}


	}


}