<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "UPDATE psg_usuario 
    SET nombre_usuario='$params->nombre_usuario',
    apellido_usuario='$params->apellido_usuario',
    telefono_usuario='$params->telefono_usuario',
    email_usuario='$params->email_usuario',
    id_cargo=$params->id_cargo,
    password='$params->password',
    estado_usuario='$params->estado_usuario',
    id_oficina=$params->id_oficina
    WHERE id_usuario=$params->id_usuario");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'Permiso Editado';
    
   
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado
?>