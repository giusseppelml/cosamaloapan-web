<?php

require_once "models/gestorSalud.php";


require_once "controllers/gestorSalud.php";

require_once "controllers/salud.php";

require_once "models/gestorGaleria.php";
require_once "controllers/gestorGaleria.php";

$salud = new SaludController();
$salud -> salud();