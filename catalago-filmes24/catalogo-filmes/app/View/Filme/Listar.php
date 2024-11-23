<?php

require __DIR__ . "\..\..\Config\Database.php";
require __DIR__ . "\..\..\Model\Filme.php";

$filmeModel = new Filme($conn);
$filmes = $filmeModel->findAll();

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmes</title>

    <link rel="stylesheet" href"/catalago-filmes24/public/css/style.css">

    <style>

        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
        @import url("https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet");   
        .table {
            tr, td, th {
                border: 1px solid;
            }
        }

        .notificacao {
            position: fixed;
            top: 20px;
            right: 20px;
            color: #fff;
            padding: 16px;

            &.sucesso {
                background-color: #4caf50;
            }

            &.erro {
                background-color: #ff4d4d;
            }
        }
    </style>
</head>
<body>


    <h2>Filmes</h2>

    <div>
        <a href="Cadastrar.php">
            <button> 
            <span class="material-symbols-outlined">
                add
            </span>
                Novo
            </button>
        </a>
    </div>

    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Ano</th>
                <th>Descrição</th>
                <th>Ação</th>
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
                        <form action="Excluir.php" method="POST">
                            <input 
                                type="hidden"
                                name="id" 
                                value="<?php echo $filme->id ?>"
                            >
                            <button>
                            <span class="material-symbols-outlined">
                            <del></del>delete
                            </span>
                                Excluir
                            </button>
                        </form>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>

    <script defer>
        /*
            se o PHP retornar mensagem=erro -> Erro ao excluir filme.
            se o PHP retornar mensagem=sucesso -> O filme foi excluído com sucesso.
        */
        const parametros = new URLSearchParams(window.location.search)
        const tipoMensagem = parametros.get("mensagem")

        if (tipoMensagem === "sucesso") {
            const notificacao = document.createElement("div")
            notificacao.className = "notificacao sucesso"
            notificacao.innerHTML = "Operação realizada com sucesso!"

            document.body.appendChild(notificacao)
            
            setTimeout(function() {
                document.body.removeChild(notificacao)

                parametros.delete("mensagem")
                const novaUrl = window.location.pathname
                window.history.replaceState(null, "", novaUrl)

            }, 2000)
        } else if (tipoMensagem === "erro") {
            const notificacao = document.createElement("div")
            notificacao.className = "notificacao erro"
            notificacao.innerHTML = "Erro ao realizar operação!"

            document.body.appendChild(notificacao)

            setTimeout(function() {
                document.body.removeChild(notificacao)

                parametros.delete("mensagem")
                const novaUrl = window.location.pathname
                window.history.replaceState(null, "", novaUrl)

            }, 2000)
        }
    </script>
</body>
</html>