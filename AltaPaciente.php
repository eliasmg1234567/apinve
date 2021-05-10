<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input'); //Reibe el json de Angular

    $params=json_decode($json); //decodifica el json

    require("conexion.php"); //Importa el archivo de la conexion a la BD
    $conexion=conexion();

    mysqli_query($conexion, "INSERT INTO pacientes(nompaciente, edadpaciente, telpaciente, dirpaciente) VALUES (
        '$params->nompaciente',
        '$params->edadpaciente',
        '$params->telpaciente',
        '$params->dirpaciente')");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'SE REGISTRO EXITOSAMENTE EL USUARIO';
    echo json_encode($response); // Muestra el json generado
    
    //Envio de informacion del JSON
    header('Content-Type: application/json');

?>