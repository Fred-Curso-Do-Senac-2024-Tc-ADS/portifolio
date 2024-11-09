<?php

require __DIR__ . DIRECTORY_SEPARATOR . ".." . DIRECTORY_SEPARATOR . ".." . DIRECTORY_SEPARATOR . "Config" . DIRECTORY_SEPARATOR . "Database.php";
require __DIR__ . DIRECTORY_SEPARATOR . ".." . DIRECTORY_SEPARATOR . ".." . DIRECTORY_SEPARATOR . "Model" . DIRECTORY_SEPARATOR . "Filme.php";

// Verifica se a requisição é do tipo POST
if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    // Caso não seja POST, redireciona
    return header("Location: Listar.php?mensagem=erro");
}

$id = (int) $_POST["id"];

// Cria uma instância do modelo Filme
$filmeModel = new Filme($conn);

// Tenta excluir o filme com o ID fornecido
$sucesso = $filmeModel->delete($id);

if ($sucesso === true) {
    // Caso a exclusão tenha sido bem-sucedida
    echo "Excluído com sucesso";
    header("Location: Listar.php?mensagem=sucesso");
    exit;
} else {
    // Caso tenha ocorrido um erro ao excluir
    echo "Erro ao excluir";
    header("Location: Listar.php?mensagem=erro");
    exit;
}

?>
