<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "UPDATE psg_permiso 
    set nombre_permiso='$params->nombre_permiso',
    descripcion_permiso='$params->descripcion_permiso' 
    where id_permiso=$params->id_permiso");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'Permiso Editado';
    
   
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado
?>