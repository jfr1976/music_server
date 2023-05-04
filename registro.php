<?php
 
    require_once 'conexion.php';
    
    session_start();
 
    $user = $_POST['user'];
    $pass = $_POST['pass'];
 
    $passwordHash = password_hash($pass, PASSWORD_DEFAULT);
    
 
    $sql = "INSERT INTO admin VALUES(";
    $sql .= "'" . $user . "', '" . $passwordHash . "')";
 
    $miPDO->query($sql);
 
    header("Location: login.html"); 
 
?>