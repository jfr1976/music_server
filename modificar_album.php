<?php

    
session_start();
    echo ucwords($_SESSION['user'])." , aquí puedes modificar cualquier álbum.";

    if (!isset($_SESSION['user'])){
        
        header('Location: login.html');
        exit();
    
    }



require_once ("conexion.php");

    //Recoge los datos $_REQUEST recoge tanto POST como GET. Se podría poner también $_POST
    
        $id = isset($_REQUEST['codigo']) ? $_REQUEST['codigo'] : null;
        $id_artist = isset($_REQUEST['id_artist']) ? $_REQUEST['id_artist'] : null;
        $title = isset($_REQUEST['title']) ? $_REQUEST['title'] : null;
        $year = isset($_REQUEST['year']) ? $_REQUEST['year'] : null;
        $alias = isset($_REQUEST['alias']) ? $_REQUEST['alias'] : null;
        $cover = isset($_REQUEST['cover']) ? $_REQUEST['cover'] : null;

     
      
        

    //Comprueba si ha recibido datos por Post
        
        if ($_SERVER['REQUEST_METHOD']=='POST'){

            $nombre_temp = $_FILES["file_upload"]["tmp_name"];
        
        if ($nombre_temp != ""){

            $nuevo_nombre = $id_artist . "_" . str_replace(' ','_', $title) .".jpg";

            $destino = RUTA_COVERS.$nuevo_nombre;

            if (move_uploaded_file($nombre_temp, $destino)){

                $mensaje = "Archivo subido correctamente";
                echo '<span>'. $mensaje . '</span>';
            
            }else {

                $msg = $err_msg[$_FILES['file_upload']['error']];
                echo '<span>'. $msg . '</span>';
            }
        }

            $miUpdate = $miPDO->prepare('UPDATE albums SET id_artist = :id_artist, title = :title, year = :year, alias = :alias, cover = :cover WHERE id = :codigo');

            $miUpdate->execute(

        [

            'codigo' => $id,
            'id_artist' => $id_artist,
            'title' => $title,
            'year' => $year,
            'alias'=>$alias,
            'cover' => $nuevo_nombre,

        ]
    );


    
    
    
    header('Location: index.php');

}else{

    //echo $id;
    $miConsulta = $miPDO->prepare('SELECT * FROM albums WHERE id = :codigo');
    $miConsulta->execute(
        
        [
            'codigo' => $id
        ]
       
    );
}

    $albums = $miConsulta->fetch();

    $miId = $miPDO->prepare('SELECT id, nombre FROM artists');
    $miId->execute();
    $artist = $miId->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="estilos.css" rel="stylesheet">
</head>
<body>


<br><br>
<form id="miform" name="miform" method="POST" action="" enctype="multipart/form-data">
    <label>ID Álbum</label>
    <input type="text" name="id" id="id" value="<?= $albums['id'] ?>" required>
    <br><br>

    <label>ID Artista:</label>
    
    <select name="id_artist" id="id_artist">
    <option disabled selected>-- Seleccionar --</option>
    <br><br>
    <?php foreach($artist as $clave => $valor){?>
        <option value ="<?= $valor['id']; ?>"><?= $valor['id']." ".$valor['nombre']; ?> </option>
        
        <?php }
        ?>

    </select>

    <br><br>
    <label>Título:</label>
    <input type="text" name="title" id="title" value="<?= $albums['title'] ?>" required>
    <br><br>
    <label>Año:</label>
    <input type="text" name="year" id="year" value="<?= $albums['year'] ?>" required>
    <br><br>
    <label>Portada:</label>
    <img src=<?=RUTA_COVERS.$albums['cover']; ?> width="350px" height="350px">
    <br><br>
    <label>Modificar portada:</label>
    <input type="hidden" name="MAX_FILE_SIZE" value="2000000">
    <input type="file" style="font-size:x-large" name="file_upload">
    <br><br>
    <input class="button" name="envio" type="Submit" value="Enviar" />
    
</body>
</html>