<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "insert into psg_cargo_usuario(nombre_cargo,estado_cargo) values('$params->nombre_cargo','$params->estado_cargo')");
    
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'CARGO AGREGADO';
    
    echo json_encode($response); // Muestra el json generado
    //Envio de informacion del JSON
    header('Content-Type: application/json');
?>