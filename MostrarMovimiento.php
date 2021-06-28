<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

   

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    

    $registros=pg_query($conexion, "SELECT * FROM psg_movimiento as m JOIN psg_oficina as o ON o.id_oficina=m.id_origen JOIN psg_oficina as oe on oe.id_oficina=m.id_destino JOIN psg_material as mat on mat.id_material=m.id_material order by id_movimiento asc");
    
    
    // recorre el resultado y lo guarda en un array
    while($resultado =pg_fetch_assoc($registros)){
        $datos[]=$resultado;
    }
   
    $json=json_encode($datos);//genera el json con los datos obtenidos
    //Envio de informacion del JSON
    header('Content-Type: application/json;charset=utf-8');
    echo $json;
?>