<?php

include_once ("conDB.php");
class Record {
    private $_con; 
    private $documentoJefe;
    private $cod_servcio;
    private $f_incio;
    private $f_fin;

    public function __construct(){
     $db = new conDB (); //instancio la conexion de base de datos
     $this->_con = $db->con; //instancio la conexion de base de datos
     $this -> documentoJefe = 495830;
     $this -> cod_servicio = ;
     $this -> f_inico = ;
     $this -> f_fin = ;
     

    }

    public function registrarRecord(){

        $query = "INSERT INTO record VALUES('$this->documentoJefe','$this->cod_servicio','$this->f_inicio',
        '$this->f_fin');";
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