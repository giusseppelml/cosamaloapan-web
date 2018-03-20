<?php
include("conexionoption.php");
$consulta="Select * from categoria";
$cnn=conectar();
$resultados=$cnn->query($consulta);
while ($reg=$resultados->fetch_assoc())
{
    $ids=$reg['id'];
    $categoria=$reg['categoria'];
    $logo=$reg['logo'];
    echo "<option value='$ids'>$categoria</option>";
}
$cnn->close();

?>