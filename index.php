<?php require_once 'dbConfig.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WORKING WITH PDO</title>
</head>
<body>
    <?php
       // $stmt = $pdo ->prepare("SELECT * FROM players");

       // if ($stmt -> execute()) {
       //     echo "<pre>";
       //     print_r($stmt->fetchAll());
       //     echo "</pre>";
       // }

       // $stmt = $pdo -> prepare("SELECT * FROM players WHERE player_id = 20");

       // if ($stmt -> execute()) {
       //    echo "<pre>";
       //    print_r($stmt -> fetch());
       //    echo "</pre>";
       // }

       // $query = 'INSERT INTO players (player_id, player_name, nickname, role, country) VALUES (?, ?, ?, ?, ?)';

       // $stmt = $pdo -> prepare ($query);

       // $executequery = $stmt -> execute(
       //     [21, 'Nikkos Villanueva', 'my mom is kinda homeless', '1', 'Philippines']
       // );

       // if ($executequery) {
       //     echo "Query Successful";
       // }

       // else {
       //     echo "Query Unsuccessful";
       // }

       // $query = 'DELETE FROM players WHERE player_id = 21';

       // $stmt = $pdo -> prepare($query);
       // $executequery = $stmt -> execute();

       // if ($executequery) {
       //  echo 'Deletion Successful';
       // }
       // else {
       //  echo 'Deletion Unsuccessful';
       // }

       // $query = 'UPDATE players SET player_name = ?, nickname = ? WHERE player_id = 1';

       // $stmt = $pdo -> prepare($query);

       // $executequery = $stmt -> execute(['Airvine Sailog', 'P. Diddy']);

       // if ($executequery) {
       //      echo 'Update Successful';
       // }
       // else {
       //  echo 'Update Unsuccessful';
       // }

       $stmt = $pdo -> prepare('SELECT player_name, nickname FROM players');

       if($stmt -> execute()) {
            $players = $stmt -> fetchAll(PDO::FETCH_ASSOC);

            echo "<table border = '1'>";
            echo "<tr><th>Player Name</th><th>Nickname</th></tr>";

            foreach ($players as $player) {
                echo "<tr>";
                echo "<td>" . htmlspecialchars($player['player_name']) . "</td>";
                echo "<td>" . htmlspecialchars($player['nickname']) . "</td>";
                echo "</tr>";
            }
            echo "</table>";
       }
       else {
        echo "Error fetching data";
       }


    ?>
</body>
</html>
