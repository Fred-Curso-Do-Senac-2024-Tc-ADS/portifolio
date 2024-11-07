<?php

require "app/Database.phpDatabase.php";
//require "Filme.php";

$database = new Database(
    "localhost",
    3306,
    "root",
    "",
    "filmesdb"
);

$conn = $database->createConnection();

require "app/View/Listar.php";

// estabelece conexão com banco
$conn = $database->createConnection();

$filmeModel = new Filme($conn);
$filmes = $filmeModel->findAll();

echo "<pre>";
print_r($filmeModel->findById(12));
echo "</pre>";

?>





<?php  

echo __DIR__."\..\Model\Filmes.php";

$filmeModel = new Filme($conn);
$filmes = $filmeModel->findAll();


?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmes</title>
</head>
    <style>
        .table {
            tr, td, th {
                border: : 1px solid;
            }
        }
    </style>


<body>
    <table class="table">
        <tbody>

        <table>
            <tr>
                <th>ID</th>
                <th>ID</th>
                <th>ID</th>
            </tr>
        </table>
            <!-- percorre a lista de resultados -->
            <?php foreach ($filmes as $filme) { ?>
                <tr>
                    <!-- escreve na tabela cada item retornado -->
                    <td><?php echo $filme->id ?></td>
                    <td><?php echo $filme->titulo ?></td>
                    <td><?php echo $filme->ano ?></td>
                    <td><?php echo $filme->descricao ?></td>
                    <td>
                        <form action="app/View/Visualizar.php" method="get">
                            <input type="hidden" name="id" value="<?php echo $filme->?>">
                            <button>Detalhes</button>
                        </form>
                    </td>
                </tr>

            <?php } ?>
        </tbody>
    </table>
</body>
</html>