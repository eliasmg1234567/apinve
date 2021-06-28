<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "INSERT INTO psg_movimiento (id_material,id_entrada,id_salida,cantidad,motivo_movimiento,tipo_movimiento,fecha_movimiento) VALUES($params->id_material,$params->id_origen,$params->id_destino,$params->cantidad,'$params->motivo_movimiento','$params->tipo_movimiento','$params->fecha_movimiento')");

    //Envio de informacion del JSON
    
    echo json_encode($response); // Muestra el json generado

    pg_query($conexion, "UPDATE psg_almacen set cantidad=cantidad-$params->cantidad where id_oficina=$params->id_origen AND id_material=$params->id_material");
    pg_query($conexion, "UPDATE psg_almacen set cantidad=cantidad+$params->cantidad where id_oficina=$params->id_destino AND id_material=$params->id_material");

    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'Permiso Editado';
    
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado
?>