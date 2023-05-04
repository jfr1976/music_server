<?php

    require_once ("conexion.php");

    $miConsulta = $miPDO->prepare('SELECT * FROM albums where id_artist=1');
    $miConsulta->execute();

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="estilos.css" rel="stylesheet">
</head>
<body>

    <img src="images/metallica.png" alt="metallica.png"/>
    <br><br><br>

    <table id="musica_bd">
        <tr>
            
            <th>PORTADA</th>
            <th>TÍTULO</th>
            <th>AÑO</th>
            <th>MODIFICAR</th>
            
            

        </tr>

        <?php

        foreach ($miConsulta as $clave=>$valor){
        ?>

            <tr>

                <td><img src=<?=RUTA_COVERS.$valor['cover']; ?> width="250px" height="250px"></td>
            
                
                <td><?=$valor['title']; ?></td>
                <td><?=$valor['year']; ?></td>
                <td><a class="button" href="modificar_album.php?codigo=<?= $valor['id'] ?>">Modificar</a></td>
                <!--<td><a class="button" onclick="return confirm('¿Estás seguro que deseas eliminar el registro?');" href="borrar.php?codigo=<?= $valor['id'] ?>" >Borrar</a></td>-->
                
            
            </tr>

            

        <?php } ?>

        </table>
        <br><br>

    <!--<div class="container">
        <div class="row">
          <div class="col-4">
            <img src="images/covers/black.jpg" width="400" height="400" alt="metallica.jpg"/>
          </div>
          <div class="col-4">
            <img src="images/covers/justice.jpg" width="400" height="400" alt="justice.jpg"/>
          </div>
          <div class="col-4">
            <img src="images/covers/master.jpg" width="400" height="400" alt="master.jpg"/>
          </div>
        </div>
      </div>-->


    
</body>
</html> 