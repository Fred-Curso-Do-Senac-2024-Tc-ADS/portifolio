<?php // tag de abertura 

// variaveis  primitivas

$nome = "Fred";

$nome = "Fred  Durães";


var_dump($nome);


$inteiro = 10;
var_dump($inteiro);

$float = 10.99;
var_dump($float);

$boleano = TRUE; // FALSE
var_dump($boleano);


// arrays indexado


$produtos = [
    "Controle",
    "mouse",
    "Chave"


];

//var_dump($produtos);

$produtos[1] = "Mouse";


// arrays associativos

$produtos2 = [
    "nome" => "Controle",
    "preco" => "29.99",
    "descricao" => "controle remoto de receptor Skygato"

];


// array multidimensional 

$produtosdaloja = [
    [
        "nome" => "monitor full hd",
        "descricao" => "lorem ipsum dolar",
        "preco" => 1099.99,
        "imagem" => "https://www.google.com/imgres?q=imagem%20de%20monitor&imgurl=https%3A%2F%2Fi.zst.com.br%2Fthumbs%2F12%2F1b%2F33%2F1438597775.jpg&imgrefurl=https%3A%2F%2Fwww.zoom.com.br%2Fmonitor%2Fmonitor-led-ips-27-philips-full-hd-272v8a&docid=RKRnSmIiXagdZM&tbnid=atWo4wuHItzqbM&vet=12ahUKEwjv-aWduLKJAxWRHNAFHemqN0oQM3oECBkQAA..i&w=810&h=590&hcb=2&ved=2ahUKEwjv-aWduLKJAxWRHNAFHemqN0oQM3oECBkQAA"
    ],
    
    [
        "nome" => "teclado macanico",
        "descricao" => "lorem ipsum dolar",
        "preco" => 699.99
    ]

    ];

    var_dump($produtosdaloja);

// teg de fechamento
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Ola <?php echo $nome ?>, bem vindo</h1>


    <ul>
        <li>
            <?php echo $produtos[0]; ?>
        </li>
    </ul>
    
    <ul>
        <li>
            <?php echo $produtos[1]; ?>
        </li>
    </ul>

    <ul>
        <li>
            <?php echo $produtos[2]; ?>
        </li>
    </ul>


    <ul>
        <li>
            <p>Nome: <?php echo $produtos2['nome'] ?></p>
            <p>descricao: <?php echo $produtos2['descricao'] ?></p>
            <p>Preco: <?php echo $produtos2['preco'] ?></p>
        </li>
    </ul>
    

    <p> array multidimensional</p>

    <ul>
        <li>
            <p>Nome: <?php echo $produtosdaloja[0] ['nome']; ?></p>
        </li>
    </ul>

    <ul>
        <li>
            <p>
                <img src" <?php echo $produtosdaloja[0] ['imagem']; ?>"
            </p>
        </li>
    </ul>

    <ul>
        <li>
            <p>descricao: <?php echo $produtosdaloja[0] ['descricao']; ?></p>
        </li>
    </ul>

    <ul>
        <li>
            <p>Preco: <?php echo $produtosdaloja[0] ['preco']; ?></p>
        </li>
    </ul>







</body> 
</html>