<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

   

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    

    $registros=pg_query($conexion, "SELECT * FROM public.psg_usuario  INNER JOIN public.psg_cargo_usuario ON psg_usuario.id_cargo=psg_cargo_usuario.id_cargo ORDER BY id_usuario ASC");
    
    
    // recorre el resultado y lo guarda en un array
    while($resultado =pg_fetch_assoc($registros)){
        $datos[]=$resultado;
    }
   
    $json=json_encode($datos);//genera el json con los datos obtenidos
    //Envio de informacion del JSON
    header('Content-Type: application/json;charset=utf-8');
    echo $json;
?>