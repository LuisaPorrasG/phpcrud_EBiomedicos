<?php

include_once ("conDB.php");
class Jefe {
    private $_con; 
    private $documentoJefe;
    private $nombre;
    private $apellido;

    public function __construct(){
     $db = new conDB (); //instancio la conexion de base de datos
     $this->_con = $db->con; //instancio la conexion de base de datos
     $this -> documentoJefe = 324729;
     $this -> nombre = "Jose";
     $this -> apellido = "Lopez";

    }

    public function registrarJefe(){

        $query = "INSERT INTO jefe VALUES('$this->documentoJefe','$this->nombre','$this->apellido');";
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