<?php
    
    header('Access-Control-Allow-Origin: *'); 
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    $json=file_get_contents('php://input'); //Reibe el json de Angular

    $params=json_decode($json); //decodifica el json

    require("conexion.php"); //Importa el archivo de la conexion a la BD
    $conexion=conexion();

    mysqli_query($conexion, "UPDATE historial 
    SET laborhistorial='$params->laborhistorial',
            pesohistorial='$params->pesohistorial',
            tallahistorial='$params->tallahistorial',
            fchistorial='$params->fchistorial',
            frhistorial='$params->frhistorial',
            tahistorial='$params->tahistorial',
            temphistorial='$params->temphistorial',
            ahhistorial='$params->ahhistorial',
            apnphistorial='$params->apnphistorial',
            hemotipohistorial='$params->hemotipohistorial',
            alergiashistorial='$params->alergiashistorial',
            apphistorial='$params->apphistorial',
            aghistorial='$params->aghistorial',
            qxhistorial='$params->qxhistorial',
            pahistorial='$params->pahistorial',
            shistorial='$params->shistorial',
            ohistorial='$params->ohistorial',
            ahistorial='$params->ahistorial',
            dxhistorial='$params->dxhistorial',
            txhistorial='$params->txhistorial',
            planhistorial='$params->planhistorial',
            citahistorial='$params->citahistorial',
            idpaciente='$params->idpaciente',
            fechahistorial='$params->fechahistorial',
            diagnostico='$params->diagnostico'

            WHERE idhistorial=$params->idhistorial");
    
    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'Historial editado';
    
    //Envio de informacion del JSON
    header('Content-Type: application/json');
    echo json_encode($response); // Muestra el json generado


?>