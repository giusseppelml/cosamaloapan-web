<?php

require_once "models/gestorEventos.php";


require_once "controllers/gestorEventos.php";

require_once "controllers/eventos.php";


require_once "models/gestorGaleria.php";
require_once "controllers/gestorGaleria.php";

$eventos = new EventosController();
$eventos -> eventos();