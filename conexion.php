<?php
// Dato de conexion a la Base de datos

function conexion() {
    $conexion = mysqli_connect("localhost", "root", "", "ginecologia");

    return $conexion; 
}
?>