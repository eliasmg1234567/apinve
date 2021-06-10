<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "insert into psg_material (nombre_material,id_tipo,fecha_compra,estado,descripcion_material,caracteristicas,id_oficina,id_usuario) 
    values('$params->nombre_material',$params->id_tipo,'$params->fecha_compra','$params->estado','$params->descripcion_material','$params->caracteristicas',$params->id_oficina,$params->id_usuario)
    ");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = ' MATERIAL AGREGADO';
    
    echo json_encode($response); // Muestra el json generado
    //Envio de informacion del JSON
    header('Content-Type: application/json');
?>