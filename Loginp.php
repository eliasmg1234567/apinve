<?php 
  header('Access-Control-Allow-Origin: *'); 
  header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
  
  $json = file_get_contents('php://input'); // RECIBE EL JSON DE ANGULAR
 
  $params = json_decode($json); // DECODIFICA EL JSON Y LO GUARADA EN LA VARIABLE
  
  require("conexionp.php"); // IMPORTA EL ARCHIVO CON LA CONEXION A LA DB

  // CREA LA CONEXION
  
  // REALIZA LA QUERY A LA DB
  $resultado = pg_query($conexion, "SELECT * FROM public.psg_usuario WHERE nombre_usuario='$params->usuario' AND password='$params->password'");
 

    class Result {}
    
    // GENERA LOS DATOS DE RESPUESTA
    $response = new Result();
    
    if(pg_numrows($resultado) > 0) {
        $response->resultado = 'OK';
        $response->mensaje = 'LOGIN EXITOSO';
        
    } else {
        $response->resultado = 'FAIL';
        $response->mensaje = 'LOGIN FALLIDO';
    }
    
    header('Content-Type: application/json');
    
    echo json_encode($response); // MUESTRA EL JSON GENERADO
    
?>