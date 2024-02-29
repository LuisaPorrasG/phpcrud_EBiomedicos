<?php

include_once ("conDB.php");
class Mantenimiento {
    private $_con; 
    private $documentoB;
    private $cod_repuesto;
    private $serie;
    private $fecha;
    private $hora;
    private $descripcion;

    public function __construct(){
     $db = new conDB (); //instancio la conexion de base de datos
     $this->_con = $db->con; //instancio la conexion de base de datos
     $this -> documentoB = 495830;
     $this -> cod_repuesto = 076;
     $this -> serie = "BIO4958";
     $this -> fecha = "2023-03-29";
     $this -> hora = "11:20";
     $this -> descripcion = "Se realiza cambio de valvula de aire";
  

    }

    public function registrarMantenimiento(){

        $query = "INSERT INTO mantenimiento_prev VALUES('$this->documentoB','$this->cod_repuesto','$this->serie',
        '$this->fecha', '$this->hora', '$this->descripcion');";
         echo $query;
         if(mysqli_query($this->_con, $query)){
             //mysql_close($this->_con);
             echo "Se registró";
         }else{
             echo "error";
         }
    }
    

}
?>