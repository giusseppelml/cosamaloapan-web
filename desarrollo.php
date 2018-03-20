<?php

require_once "models/gestorDesarrollo.php";


require_once "controllers/gestorDesarrollo.php";

require_once "controllers/desarrollo.php";




$desarrollo = new DesarrolloController();
$desarrollo -> desarrollo();