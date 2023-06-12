<?php
require_once '../config.php';
header("Content-Type: text/html;charset=utf-8");

$valido['success']=array('success'=>false, 
'mensaje'=>"",
'clienteid'=>"",
'nombre'=>"",
'municipio'=>"",
'telefono'=>"");

if($_POST){
    $id=$_POST['clienteid'];
    $sql="SELECT * FROM cliente WHERE clienteid=$id";
    $resultado=$cx->query($sql);
    $row=$resultado->fetch_array();
    $valido['success']=true;
    $valido['mensaje']="SE ENCONTRO REGISTRO";
    $valido['clienteid']=$row[0];
    $valido['nombre']=$row[1];
    $valido['municipio']=$row[2];
    $valido['telefono']=$row[3];
}else{
    $valido['success']=false;
    $valido['mensaje']="ERROR AL CARGAR CONTACTO";
}
$cx->close();
echo json_encode($valido);

?>