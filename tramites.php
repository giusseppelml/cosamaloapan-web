<?php

require_once "models/gestorTramites.php";


require_once "controllers/gestorTramites.php";

require_once "controllers/tramites.php";

$tramites = new TramitesController();
$tramites -> tramites();