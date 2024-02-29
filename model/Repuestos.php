<?php

include_once ("conDB.php");
class Repuestos {
    private $_con; 
    private $marca;
    private $cod_respuesto;
    private $modelo;

    public function __construct(){
     $db = new conDB (); //instancio la conexion de base de datos
     $this->_con = $db->con; //instancio la conexion de base de datos
     $this -> marca = "Molte";
     $this -> cod_respuesto = 45;
     $this -> modelo = "MotorDC";

    }

    public function registrarRepuesto(){

        $query = "INSERT INTO repuestos VALUES('$this->marca','$this->cod_respuesto','$this->modelo');";
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