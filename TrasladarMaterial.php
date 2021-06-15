<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
    

// revisar
    pg_query($conexion, "INSERT INTO psg_salida VALUES($params->id_oficinaEntrada)");
    pg_query($conexion, "INSERT INTO psg_entrada VALUES($params->id_oficinaSalida)");
    pg_query($conexion, "INSERT INTO psg_movimiento VALUES($params->id_material,$params->id_oficinaEntrada,$params->id_oficinaSalida,'$params->cantidad','$params->motivo_movimiento','$params->tipo_movimiento','$params->fecha_movimiento')");
    pg_query($conexion, "UPDATE psg_almacen set cantidad=cantidad-$params->cantidad where id_oficina=$params->id_oficinaSalida AND id_material=$params->id_material");
    pg_query($conexion, "UPDATE psg_almacen set cantidad=cantidad+$params->cantidad where id_oficina=$params->id_oficinaEntrada AND id_material=$params->id_material");

    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'Permiso Editado';
    
   
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado
?>