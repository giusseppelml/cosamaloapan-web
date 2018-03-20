




    <!-- menu -->
    <div class="content">


   

        <div class="container">
            	<ol class="breadcrumb">
  <li><a href="http://cosamaloapan.gob.mx/">Inicio</a></li>
  <li class="active">Directorio turístico</li>
</ol>

	<div class="search">
		<input type="text" placeholder="Buscar" data-search />
	</div>
	<div class="items">
		
	</div>
<br><br>
            <div class="row">
                <!-- starter -->
            
<?php
            $turismo = new Turismo();
            $turismo -> seleccionarTurismoController(); 

   ?>
              
                <!-- /.starter -->
            </div>
           </div>
    </div>
    <!-- /.menu -->
   

 
<script type="text/javascript">

$('[data-search]').on('keyup', function() {
	var searchVal = $(this).val();
	var filterItems = $('[data-filter-item]');

	if ( searchVal != '' ) {
		filterItems.addClass('hidden');
		$('[data-filter-item][data-filter-name*="' + searchVal.toLowerCase() + '"]').removeClass('hidden');
	} else {
		filterItems.removeClass('hidden');
	}
});
</script>


