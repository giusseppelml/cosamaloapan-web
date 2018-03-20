<?php

require_once "models/gestorTurismo.php";


require_once "controllers/gestorTurismo.php";

require_once "controllers/turismo.php";

$turismo = new TurismoController();
$turismo -> turismo();