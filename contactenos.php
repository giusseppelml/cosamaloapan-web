<?php

require_once "models/gestorMensajes.php";


require_once "controllers/gestorMensajes.php";

require_once "controllers/mensajes.php";



$mensajes = new MensajesController();
$mensajes -> mensajes();