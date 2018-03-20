<?php

require_once "models/gestorNotas.php";


require_once "controllers/gestorNotas.php";

require_once "controllers/notas.php";


require_once "models/gestorGaleria.php";
require_once "controllers/gestorGaleria.php";

$noticias = new NotasController();
$noticias -> notas();