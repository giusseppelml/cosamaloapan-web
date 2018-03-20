<?php

function conectar()
{
    $servidor="localhost";
    $usuario="cosamalo_adminpa";
    $password="Cosa5523@admin";
    $bd="cosamalo_basepagina";
    $cnn=new mysqli($servidor,$usuario, $password,$bd);
    return $cnn;
}
?>