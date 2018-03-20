



  <main class="site-main">
   
        <section class="home-area">
            <div class="home_content">
                <div class="container">
                    <div class="row">
                     

                        <div class="col-sm-12 home_bottom">
	<h1 class="text-center text-info"><b>-DESCÚBRE-</b></h1>
	<BR>
                            <div class="clearfix"></div>
                            <div class="row">
                                <div class="carousel slide" data-ride="carousel" data-type="multi" data-interval="6000" id="myCarousel">
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <div class="col-md-2 col-sm-6 col-xs-12 p10">
                                                <a href="https://www.cosamaloapan.mx" target="_blank"><img src="views/images/fija.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        
                                            
                                            	<?php

			$galeria = new Galeria();
			$galeria -> seleccionarGaleriaController();
			
		?>
                                            
                                     
                                                             
                                    </div>
                                    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                                    <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
                                </div>
                            </div>                            
                        </div>

                    </div>
                </div>
            </div>
        </section>


    </main>

    <script type="text/javascript">
        $('.carousel[data-type="multi"] .item').each(function(){
          var next = $(this).next();
          if (!next.length) {
            next = $(this).siblings(':first');
          }
          next.children(':first-child').clone().appendTo($(this));

          for (var i=0;i<4;i++) {
            next=next.next();
            if (!next.length) {
                next = $(this).siblings(':first');
            }

            next.children(':first-child').clone().appendTo($(this));
          }
        });        
    </script>



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<!--<script src="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script> -->
