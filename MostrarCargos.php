<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

   

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    

    $registros=pg_query($conexion, "select c.id_Cargo,c.nombre_cargo,p.nombre_permiso from public.psg_cargo_usuario as c join psg_permiso_cargo as pc on c.id_cargo=pc.id_cargo join psg_permiso as p on p.id_permiso=pc.id_permiso order by c.id_cargo asc");
    
    
    // recorre el resultado y lo guarda en un array
    while($resultado =pg_fetch_assoc($registros)){
        $datos[]=$resultado;
    }
   
    $json=json_encode($datos);//genera el json con los datos obtenidos
    //Envio de informacion del JSON
    header('Content-Type: application/json;charset=utf-8');
    echo $json;
?>