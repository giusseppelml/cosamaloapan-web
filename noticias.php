<?php

require_once "models/gestorNoticias.php";


require_once "controllers/gestorNoticias.php";

require_once "controllers/noticias.php";


require_once "models/gestorGaleria.php";
require_once "controllers/gestorGaleria.php";

$noticias = new NoticiasController();
$noticias -> noticias();