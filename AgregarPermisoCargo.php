<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input');

    $params=json_decode($json);

    require("conexionp.php"); //Importa el archivo de la conexion a la BD
    
/* revisar
for ($i = 0; $i < count($lote1); $i++){
    $sql1="INSERT INTO pedidos (lote,cantidad,unidad,conceptos,costo) VALUES '".$lote1[$i]."','".$cantidad[$i]."','".$unidad[$i]."','".$conceptos[$i]."','".$costo[$i]."')";
    }
*/

for($i=0;$i<count($params->id_cargo);$i++){
    pg_query($conexion, "INSERT INTO psg_permiso_cargo 
    values (id_cargo=$params->id_cargo[$i],id_permiso=$params->id_permiso[$i])");
}
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'PERMISO CARGO AGREGADO';
    
    echo json_encode($response); // Muestra el json generado
    //Envio de informacion del JSON
    header('Content-Type: application/json');
?>