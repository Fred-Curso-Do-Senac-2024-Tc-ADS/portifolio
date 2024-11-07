<?php 

require __DIR__."\..\Config\Database.php";
require __DIR__."\..\Model\Filmes.php";

$filmeModel = new Filme($conn);
$filmes = $filmeModel->findById(1);

$id = $_GET["id"];


print_r($filmes);

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmes</title>
</head>
<body>
    <h1>Filme</h1>


    <h3>Titulo: <?php echo $filmes->detitulo; ?></h3>
    <p>Ano: <?php echo $filmes->dano; ?></p>
    <p>Descricao: <?php echo $filmes->descricao; ?></p>
</body>
</html>

