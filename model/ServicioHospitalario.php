<?php

include_once ("conDB.php");
class ServicioHospitalario {
    private $_con; 
    private $nombre;
    private $cod_servicio;

    public function __construct(){
     $db = new conDB (); //instancio la conexion de base de datos
     $this->_con = $db->con; //instancio la conexion de base de datos
     $this -> nombre = "Intermedio";
     $this -> cod_servicio = "008";

    }

    public function registrarServicio(){

        $query = "INSERT INTO servicio_hospitalario VALUES('$this->nombre','$this->cod_servicio');";
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