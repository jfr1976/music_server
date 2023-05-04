<?php

    $hostDB = '127.0.0.1';
    $nombreDB = 'musica';
    $usuarioDB = 'root';
    $passwordDB = '';
    $hostPDO = "mysql:host=$hostDB;dbname=$nombreDB;charset=utf8";

    CONST RUTA_COVERS = './images/covers/'; 

    try{

        $miPDO = new PDO($hostPDO, $usuarioDB, $passwordDB);

    }catch (PDOException $error){

        echo "ERROR: ".$error ->getMessage();
    }

?>