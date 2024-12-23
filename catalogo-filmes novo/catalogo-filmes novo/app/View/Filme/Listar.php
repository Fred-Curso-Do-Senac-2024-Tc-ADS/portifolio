<?php

require __DIR__ . "\..\..\Config\Database.php";
//require __DIR__ . "\..\..\Model\Filme.php";
require __DIR__ . "\..\..\Model\Usuario.php";

//$filmeModel = new Filme($conn);
$filmeModel = new Usuario($conn);
//$filmes = $filmeModel->findAll();
$filmes = $usuarioModel->findAll();

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuario</title>

    <style>
        .table {
            tr, td, th {
                border: 1px solid;
            }
        }
    </style>
</head>
<body>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Email</th>
                <!--<th>Ano</th>-->
                <th>Descrição</th>
                <!--<th>Ação</th>--> <!-- -->
            </tr>
        </thead>
        <tbody>
            <!-- percorre a lista de resultados -->
            <?php foreach ($filmes as $filme) { ?>
                
                
                <tr>
                    <!-- escreve na tabela cada item retornado -->
                    <td><?php echo $filme->id ?></td>
                    <td><?php echo $filme->titulo ?></td>
                    <td><?php echo $filme->ano ?></td>
                    <td><?php echo $filme->descricao ?></td>
                    <td>
                        <form action="Visualizar.php" method="GET">
                            <input 
                                type="hidden"
                                name="id" 
                                value="<?php echo $filme->id ?>"
                            >
                            <button>Detalhes</button>
                        </form>

                        <form action="Excluirr.php" method="POST">
                            <input 
                                type="hidden"
                                name="id" 
                                value="<?php echo $filme->id ?>"
                            >
                            <button>Excluir</button>
                        </form>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>

    <script>
        /* se o php retornar mensagem -> Erro ao Exclui
        se o php retornar mensagem -> sucesso -> o filme foi Excluido*/ 

        const parent = new URLSearchParams(window.location.search)
        const tipoMensagem = parametros.get("mensagem")

        if (tipoMensagem === "sucesso") {
            const Notificaticao =document.createElement("div")
            Notificaticao.className = "notificacao"
            Notificaticao.innerHTML = "Operação realizada com sucesso"
            document.getElementById('mensagen').innerHTML = '<h1>Excluir com sucesso</h1>'

            document.body.appendChild(Notificaticao)
        } else if (tipoMensagem === "erro") { 
            document.getElementById('Mensagem').innerHTML = '<h1>Error ao Excluir</h1>'
    
        }

        document.getElementById('mensagem').innerHTML = '<h1>RRO</H1>'
    </script>
</body>
</html>
