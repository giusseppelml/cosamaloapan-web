<?php

require_once "models/gestorEducacion.php";


require_once "controllers/gestorEducacion.php";

require_once "controllers/educacion.php";

require_once "models/gestorGaleria.php";
require_once "controllers/gestorGaleria.php";

$educacion = new EducacionController();
$educacion -> educacion();