<?php

session_start();
    echo ucwords($_SESSION['user'])." , bienvenido a Music Server.";

    if (!isset($_SESSION['user'])){
        
        header('Location: login.html');
        exit();
    
    }

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Usuario</title>
    <link href="estilos.css" rel="stylesheet">

</head>
<body>

    <h1><u>NUEVO USUARIO</u></h1>

<form style="text-align:center" id="miform" name="miform" method="POST" action="registro.php">
        
        <label>Usuario:</label>
        <br>
        <input type="text" name="user" id="user" required placeholder="Usuario"> 
        <br><br>
        <label>Contraseña:</label>
        <br>
        <input type="password" name="pass" id="pass" required placeholder="Contraseña"/> 
        <br><br>
        <input class="button" name="registrar" type="Submit" value="Registrar" />
    
</body>
</html> 