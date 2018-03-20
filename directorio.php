<?php

require_once "models/gestorDirectorio.php";


require_once "controllers/gestorDirectorio.php";

require_once "controllers/directorio.php";



$directorio = new DirectorioController();
$directorio -> directorio();