<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input'); //Reibe el json de Angular

    $params=json_decode($json); //decodifica el json

    require("conexion.php"); //Importa el archivo de la conexion a la BD
    $conexion=conexion();

    mysqli_query($conexion, "DELETE FROM `pacientes` WHERE idpaciente=".$_GET['idpaciente']);
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'PACEINTEELIMINADO';
    
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado


?>