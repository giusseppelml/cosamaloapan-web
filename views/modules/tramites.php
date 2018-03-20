

<div class="container">

<ol class="breadcrumb">
  <li><a href="http://cosamaloapan.gob.mx/">Inicio</a></li>
  <li class="active">Trámites</li>
</ol>

	<div class="search">
		<input type="text" placeholder="Buscar" data-search />
	</div>
	<div class="items">
		<?php
            $tramites = new Tramites();
            $tramites -> seleccionarTramitesController(); 

   ?>
	</div>
</div>


 
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