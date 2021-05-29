<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    include("conexionp.php"); //Importa el archivo de la conexion a la BD
    

    $registros=pg_query($conexion, "select * from public.usuarios full join public.cargos on usuarios.id_cargo=cargos.id_cargo");
    
    
    // recorre el resultado y lo guarda en un array
    while($resultado =pg_fetch_assoc($registros)){
        $datos[]=$resultado;
    }
   
    $json=json_encode($datos);//genera el json con los datos obtenidos
    //Envio de informacion del JSON
    header('Content-Type: application/json;charset=utf-8');
    echo $json;
?>