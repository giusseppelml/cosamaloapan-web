<?php

require_once "models/gestorAlcalde.php";


require_once "controllers/gestorAlcalde.php";

require_once "controllers/alcalde.php";



$alcalde = new AlcaldeController();
$alcalde -> alcalde();