<?php

require_once "models/gestorTrabajo.php";


require_once "controllers/gestorTrabajo.php";

require_once "controllers/trabajo.php";



$trabajo = new TrabajoController();
$trabajo -> trabajo();