<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="estilos.css" rel="stylesheet">

</head>
<body>



<?php

    require_once ("conexion.php");

    $user = null;
    $pass = null;
    
    if (isset($_POST["user"]) && ($_POST["pass"])) {
    $user = $_POST["user"];
    $pass = $_POST["pass"];

    /*echo "Usuario: ".$user;
    echo "<br>";
    echo "Contraseña: ".$pass;*/

    $miConsulta = $miPDO->prepare ('SELECT pass FROM admin WHERE user = :user');
    $miConsulta->execute(

        [

            'user' => $user

        ]
    );

} 

$claveHash = $miConsulta->fetchColumn();

//echo $claveHash;


if (password_verify($pass, $claveHash)) {
    
    session_start();
    $_SESSION['user'] = $user;
    header("Location: index.php");

} else {
    
    //echo '<script type="text/javascript">alert("Contraseña o usuario incorrecto");window.location.href="login.html"</script>';
    echo $pass;
    echo '<br>';
    echo $claveHash;
    echo '<br>';
    echo $user;



}



?>

</body>
</html>