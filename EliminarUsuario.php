<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
    $id_usuario=$_GET['id_usuario'];
// revisar
    pg_query($conexion, "delete from psg_usuario where id_usuario='$id_usuario'");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'USUARIO ELIMINADO';
    
   
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado
?>