<?php
//referencia del archivo de base de datos

require_once ("./util/config.php");

class conDB {
    public $con = null;
     //en php solo  se puede tener un constructor
     
    public function __construct(){
        try{
            //conexion
            $this-> con = mysqli_connect (DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME); 
            //se le pasa servidor, nombre del servidor, password, y nombre de base de datos

            if(mysqli_connect_error ()){
                echo "Erorr al conectarse to server databes".
                mysqli_connect_error();

            }else{
                echo "Conexion Exitosa  ";
            }

        }catch (Exception $e){ // en php las variables enpiezana con $

            echo "Error";
         
 
        }


    }

}

?>