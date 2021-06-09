<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
    $id_permiso=$_GET['id_permiso'];
    $id_cargo=$_GET['id_cargo'];
// revisar
    pg_query($conexion, "delete from psg_permiso_cargo where id_permiso='$id_permiso' and id_cargo='$id_cargo'");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'Permiso ELIMINADO';
    
   
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado
?>