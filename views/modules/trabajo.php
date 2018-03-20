<div class="container">
<ol class="breadcrumb">
  <li><a href="http://cosamaloapan.gob.mx/">Inicio</a></li>
  <li class="active">Bolsa de trabajo</li>
</ol>
<div class="col-md-4">
 <img src="views/images/bolsa.jpg" alt="Post">
</div>
	<div class="items">
		<?php
            $trabajo = new Trabajo();
            $trabajo -> seleccionarTrabajoController(); 
        ?>
	</div>
</div>

 
