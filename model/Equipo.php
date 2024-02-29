<?php

include_once ("conDB.php");
class Equipo {
    private $_con; 
    private $nombre;
    private $marca;
    private $modelo;
    private $serie;
    private $estado;

    public function __construct(){
     $db = new conDB (); //instancio la conexion de base de datos
     $this->_con = $db->con; //instancio la conexion de base de datos
     $this -> serie = "456738";
     $this -> nombre = "Tensiometro";
     $this -> modelo = "lOw";
     $this -> estado = 1;
     $this -> marca = "TENSER";
    }

    public function registrarEquipo(){

        $query = "INSERT INTO equipo_biomedico VALUES('$this->serie','$this->nombre','$this->modelo', 
        '$this->estado','$this->marca');";
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