<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "INSERT INTO psg_almacen (id_material,id_oficina,cantidad,fecha) VALUES($params->id_material,$params->id_oficina,$params->cantidad,'$params->fecha')");
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'INGRESO AGREGADO';
    
    echo json_encode($response); // Muestra el json generado
    //Envio de informacion del JSON
    header('Content-Type: application/json');
?>