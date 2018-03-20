<section class="post-content-section">
<ol class="breadcrumb">
  <li><a href="http://cosamaloapan.gob.mx/">Inicio</a></li>
  <li class="active">Eventos</li>
</ol>
    <div class="container">

        <div class="row">
        	<br/><br/>
               
            <div class="col-lg-8 col-md-8 col-sm-12">

            <?php
			$eventos = new Eventos();
			$eventos -> seleccionarEventosController(); 
			?>


			</div>





             <div class="col-lg-1"></div>
            <div class="col-lg-3  col-md-3 col-sm-12">
               <div class="fb-page" data-href="https://www.facebook.com/SomosCosamaloapan/" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/SomosCosamaloapan/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/SomosCosamaloapan/">H. Ayuntamiento Cosamaloapan 2018-2021</a></blockquote></div>
            
<br> <br>
            <div class="fb-page" data-href="https://www.facebook.com/RHermidaSalto/" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/RHermidaSalto/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/RHermidaSalto/">Raúl Hermida</a></blockquote></div>
      <hr>    
       <?php

      $galeria = new Galeria();
      $galeria -> seleccionarGaleriaController();
      
    ?>
          
        </div>
      

    </div> <!-- /container -->
</section>


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.11';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>