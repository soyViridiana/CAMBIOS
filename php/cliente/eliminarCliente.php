<?php
require_once '../config.php';
$valido['success']=array('success'=>false, 'mensaje'=>"");

if($_POST){
    $id=$_POST['contactoid'];    
    $sqlEliminar="DELETE FROM contacto WHERE contactoid=$id";
    if($cx->query($sqlEliminar)===true){
        $valido['success']=true;
        $valido['mensaje']="SE ELIMINO CORRECTAMENTE";
    }else{
        $valido['success']=false;
        $valido['mensaje']="ERROR: NO SE ELIMINO";
    }

}else{
    $valido['success']=false;
    $valido['mensaje']="NO SE ELIMINO";
}
echo json_encode($valido);



?>