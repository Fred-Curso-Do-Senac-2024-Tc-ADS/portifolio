<?php

require "Database.php";

$database =  new Database(
    "localhost",
    3306,
    "root",
    "",
    "filmesdb"
);


var_dump($database);

$conn = $database->createConnection();

var_dump($conn);

$conn->prepare("SELECT * FROM filme");

var_dump($stmt);

$stmt->execute($stmt);

//$res = $stmt->fetch();

//print_r($res);

//foreach ($stmt as $row) 
while ($row = $stmt->fetch) {
    print_r($row);
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table>
        <tbody>
            <?php while ($row = $stmt->fetch()) { ?>

            <tr>
                <td><?php echo $row["id"] ?></td>
                <td><?php echo $row["titulo"] ?></td>
                <td><?php echo $row["ano"] ?></td>
                <td><?php echo $row["descricao"] ?></td>
            </tr>
            <?php } ?>
    </tbody>
    </table>
</body>
</html>