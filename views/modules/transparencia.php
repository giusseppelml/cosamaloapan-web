

<div class="container">

<ol class="breadcrumb">
  <li><a href="http://cosamaloapan.gob.mx/">Inicio</a></li>
  <li class="active">Transparencia</li>
</ol>
    <div class="row profile">

    <div class="col-md-9">
            <div class="profile-content">

<section class="post-content-section">
    <div class="container">

        <div class="row">
               
            <div class="col-lg-8 col-md-8 col-sm-12">

            <?php
      $transparencia = new Transparencia();
      $transparencia -> seleccionarTransparenciaController(); 
      ?>


      </div>


             <div class="col-lg-1"></div>
           
      

    </div> <!-- /container -->
</section>


            </div>
    </div>

        <div class="col-md-3">
      <div class="profile-sidebar">
        <!-- SIDEBAR USERPIC -->
        <div class="profile-userpic">
          <img src="http://keenthemes.com/preview/metronic/theme/assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt="">
        </div>
        <!-- END SIDEBAR USERPIC -->
        <!-- SIDEBAR USER TITLE -->
        <div class="profile-usertitle">
          <div class="profile-usertitle-name">
            UNIDAD DE TRANSPARENCIA
          </div>
          <div class="profile-usertitle-job">
            MARICHELL MEDINA LIMÓN
          </div>
        </div>
        <!-- END SIDEBAR USER TITLE -->
        <!-- SIDEBAR BUTTONS -->
        <div class="profile-userbuttons"><a href=" https://api.whatsapp.com/send?phone=522291474428">
          <button type="button" class="btn btn-success btn-sm"><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i>
</button></a>
        </div>
        <!-- END SIDEBAR BUTTONS -->
        <!-- SIDEBAR MENU -->
        <div class="profile-usermenu">
          <ul class="nav">
            <li class="active">
              <a>
              <i class="glyphicon glyphicon-earphone"></i>
              229 147 44 28 ext 254 </a>
            </li>
            <li>
              <a>
              <i class="glyphicon glyphicon-envelope"></i>
              marichell.ml@gmail.com </a>
            </li>
          </ul>
        </div>
        <!-- END MENU -->
      </div>
<hr/>
      <?php

      $galeria = new Galeria();
      $galeria -> seleccionarGaleriaController();
      
    ?>

    </div>
    
  </div>
</div>

<br>
<br>


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.11';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>