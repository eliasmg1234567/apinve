<?php
// Dato de conexion a la Base de datos

    $conexion=pg_connect("host='localhost' port='5432' dbname='psg_inve' user='postgres' password='elias'");


    //$conexion = mysqli_connect("localhost", "root", "", "inventario");
    
/*
    $contraseña = "elias";
$usuario = "postgres";
$nombreBaseDeDatos = "pginve";
# Puede ser 127.0.0.1 o el nombre de tu equipo; o la IP de un servidor remoto
$rutaServidor = "127.0.0.1";
$puerto = "5432";
try {
    $base_de_datos = new PDO("pgsql:host=$rutaServidor;port=$puerto;dbname=$nombreBaseDeDatos", $usuario, $contraseña);
    $base_de_datos->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (Exception $e) {
    echo "Ocurrió un error con la base de datos: " . $e->getMessage();
}
*/

?>

