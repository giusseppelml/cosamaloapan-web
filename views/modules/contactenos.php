<ol class="breadcrumb">
  <li><a href="http://cosamaloapan.gob.mx/">Inicio</a></li>
  <li class="active">Atención Ciudadana</li>
</ol>
<footer class="row" id="contactenos">


	
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">


		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3786.6247510951775!2d-95.79846988554466!3d18.364396087500136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85c3b5c1cec4f247%3A0x6d924d62152cdd97!2sPalacio+Municipal+De+Cosamaloapan!5e0!3m2!1ses-419!2smx!4v1517076476250" width="100%"  frameborder="0" frameborder="0" style="border:0" allowfullscreen></iframe>




	</div>

	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="formulario" >


			<form method="post" onsubmit="return validarMensaje()">

			    <input type="text" class="form-control" id="nombre" name="nombre"  placeholder="Nombre" required>

			    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>

			    <textarea name="mensaje" id="mensaje" cols="30" rows="10" placeholder="Contenido del Mensaje" class="form-control" required></textarea>

			 
			  	<input type="submit" class="btn btn-default" value="Enviar">
		</form>

		<?php

		$mensajes = new Mensajes();
		$mensajes -> registroMensajesController();

		?>
				
	</div>

</footer>
