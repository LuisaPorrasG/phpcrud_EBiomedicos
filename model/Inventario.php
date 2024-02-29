<?php

include_once ("conDB.php");
class Record {
    private $_con; 
    private $serie;
    private $cod_servcio;


    public function __construct(){
     $db = new conDB (); //instancio la conexion de base de datos
     $this->_con = $db->con; //instancio la conexion de base de datos
     $this -> serie = ;
     $this -> cod_servicio = ;

     

    }

    public function registrarInventario(){

        $query = "INSERT INTO inventario VALUES('$this->serie','$this->cod_servicio');";
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