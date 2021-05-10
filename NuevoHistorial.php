<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input'); //Reibe el json de Angular

    $params=json_decode($json); //decodifica el json

    require("conexion.php"); //Importa el archivo de la conexion a la BD
    $conexion=conexion();


     

    mysqli_query($conexion, "INSERT INTO historial(
    laborhistorial,
    pesohistorial,
    tallahistorial,
    fchistorial,
    frhistorial,
    tahistorial,
    temphistorial,
    ahhistorial,
    apnphistorial,
    hemotipohistorial,
    alergiashistorial,
    apphistorial,
    aghistorial,
    qxhistorial,
    pahistorial,
    shistorial,
    ohistorial,
    ahistorial,
    dxhistorial,
    txhistorial,
    planhistorial,
    citahistorial,
    idpaciente,
    fechahistorial,
    diagnostico) VALUES (
        
        '$params->laborhistorial',
        '$params->pesohistorial',
        '$params->tallahistorial',
        '$params->fchistorial',
        '$params->frhistorial',
        '$params->tahistorial',
        '$params->temphistorial',
        '$params->ahhistorial',
        '$params->apnphistorial',
        '$params->hemotipohistorial',
        '$params->alergiashistorial',
        '$params->apphistorial',
        '$params->aghistorial',
        '$params->qxhistorial',
        '$params->pahistorial',
        '$params->shistorial',
        '$params->ohistorial',
        '$params->ahistorial',
        '$params->dxhistorial',
        '$params->txhistorial',
        '$params->planhistorial',
        '$params->citahistorial',
        '$params->idpaciente',
        '$params->fechahistorial',
        '$params->diagnostico')");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'SE REGISTRO EXITOSAMENTE EL NUEVO HISTORIAL';
    echo json_encode($response); // Muestra el json generado
    
    //Envio de informacion del JSON
    header('Content-Type: application/json');

?>