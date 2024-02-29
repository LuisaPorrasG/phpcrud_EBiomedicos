<?php

include_once ("conDB.php");
class Ingeniero {
    private $_con; 
    private $documentoB;
    private $nombre;

    public function __construct(){
     $db = new conDB (); //instancio la conexion de base de datos
     $this->_con = $db->con; //instancio la conexion de base de datos
     $this -> documentoB = 13475839;
     $this -> nombre = "Laura";
    }

    public function registrarIngeniero(){

        $query = "INSERT INTO ingeniero_biomedico VALUES('$this->documentoB','$this->nombre');";
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