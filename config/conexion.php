<?php
    try{
    $base = new PDO('mysql:host=localhost; dbname=videzlimpias', 'root', '');
    $base->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    }catch(Exception $e){
        die('error al conectar con la base de datos' . $e->getMessage());    
    }
    define("LEER_MAS","Leer Mas");

?>