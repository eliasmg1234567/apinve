<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

   

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
// revisar
    $registros=pg_query($conexion, "select * from psg_oficina as o join psg_usuario as u on u.id_oficina=o.id_oficina join psg_cargo_usuario as cu on u.id_cargo=cu.id_cargo where o.id_oficina=$_GET[id_oficina]");
    
    
    // recorre el resultado y lo guarda en un array
    while($resultado =pg_fetch_array($registros)){
        $datos[]=$resultado;
    }
   
    $json=json_encode($datos);//genera el json con los datos obtenidos
    //Envio de informacion del JSON
    header('Content-Type: application/json;charset=utf-8');
    echo $json;
?>