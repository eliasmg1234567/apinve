<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    pg_query($conexion, "insert into psg_usuario(nombre_usuario,apellido_usuario,telefono_usuario,email_usuario,id_cargo,password,estado_usuario,id_oficina) 
    values('$params->nombre_usuario','$params->apellido_usuario','$params->telefono_usuario','$params->email_usuario',$params->id_cargo,'$params->password','$params->estado_usuario',$params->id_oficina)
    ");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = ' MATERIAL AGREGADO';
    
    echo json_encode($response); // Muestra el json generado
    //Envio de informacion del JSON
    header('Content-Type: application/json');
?>