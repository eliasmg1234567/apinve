<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "INSERT INTO psg_permiso_cargo 
    values (id_cargo=$params->id_cargo,id_permiso=$params->id_permiso)");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'CARGO AGREGADO';
    
    echo json_encode($response); // Muestra el json generado
    //Envio de informacion del JSON
    header('Content-Type: application/json');
?>