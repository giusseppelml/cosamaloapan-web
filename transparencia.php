<?php

require_once "models/gestorTransparencia.php";


require_once "controllers/gestorTransparencia.php";
require_once "models/gestorGaleria.php";
require_once "controllers/gestorGaleria.php";
require_once "controllers/transparencia.php";


$transparencia = new TransparenciaController();
$transparencia -> transparencia();