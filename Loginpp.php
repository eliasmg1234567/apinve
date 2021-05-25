<?php 
  header('Access-Control-Allow-Origin: *'); 
  header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
  
  $json = file_get_contents('php://input'); // RECIBE EL JSON DE ANGULAR
 
  $params = json_decode($json); // DECODIFICA EL JSON Y LO GUARADA EN LA VARIABLE
  
  include("conexionp.php"); // IMPORTA EL ARCHIVO CON LA CONEXION A LA DB
//   $usuario=array(
//       "usuario"=>'walter',
//       "password"=>'walter'
//   );
//     $params=(object)$usuario;

   // CREA LA CONEXION
  
  // REALIZA LA QUERY A LA DB
//   $resultado = pg_query($base_de_datos, "SELECT * FROM public.usuarios WHERE nombre_usuario='$params->usuario' AND contrasena='$params->password'");
  $resultado = $base_de_datos->prepare( "SELECT * FROM public.usuarios WHERE nombre_usuario=:usuario AND password=:password");
  $resultado->execute([":usuario"=>$params->usuario,":password"=>$params->password]);
//   $resultado=$resultado->fetchAll(PDO::FETCH_OBJ);
 
//   var_dump($resultado);
//   die();

  
    class Result {}
    
    // GENERA LOS DATOS DE RESPUESTA
    $response = new Result();
    
    if($resultado->rowCount() > 0) {
        $response->resultado = 'OK';
        $response->mensaje = 'LOGIN EXITOSO';
    } else {
        $response->resultado = 'FAIL';
        $response->mensaje = 'LOGIN FALLIDO';
    }
    
    header('Content-Type: application/json');
    
    echo json_encode($response); // MUESTRA EL JSON GENERADO
    
?>