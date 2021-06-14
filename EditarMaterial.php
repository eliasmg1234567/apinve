<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "UPDATE psg_material 
    SET nombre_material='$params->nombre_material',
    estado='$params->estado',
    descripcion_material='$params->descripcion_material',
    fecha_compra='$params->fecha_compra',
    id_tipo=$params->id_tipo,
    caracteristicas='$params->caracteristicas' 
    WHERE id_material=$params->id_material");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'Permiso Editado';
    
   
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado
?>