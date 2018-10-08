<?php
require('conector.php');

$con = new ConectorBD('localhost', 'root', '');
$respuesta = $con->iniciarConexion('agenda_bd');

if ($respuesta == 'OK') {

  $datos['nombre'] = 'Mauro Javier Sanchez';
  $datos['email'] = 'mauro@nextu.com';
  $datos['clave'] = password_hash("mauro123", PASSWORD_DEFAULT);
  $datos['nacimiento'] = '1981-11-04';

  if($con->insertarRegistro('usuarios', $datos)){
    echo "Se insertaron correctamente los datos";
  }else echo "Se ah producido un error en la insercion";

  $datos['nombre'] = 'Mario Alberto Kempes';
  $datos['email'] = 'kempes@nextu.com';
  $datos['clave'] = password_hash("kempes123", PASSWORD_DEFAULT);
  $datos['nacimiento'] = "'1954-07-15'";

  if($con->insertarRegistro('usuarios', $datos)){
    echo "Se insertaron correctamente los datos";
  }else echo "Se ah producido un error en la insercion";

  $datos['nombre'] = 'Diego Armando Maradona';
  $datos['email'] = 'maradona@nextu.com';
  $datos['clave'] = password_hash("maradona123", PASSWORD_DEFAULT) ;
  $datos['nacimiento'] = "'1960-10-30'";

  if($con->insertarRegistro('usuarios', $datos)){
    echo "Se insertaron correctamente los datos";
  }else echo "Se ah producido un error en la insercion";
}

$con->cerrarConexion();

 ?>
