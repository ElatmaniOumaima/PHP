<?php
// Connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sign_in";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Récupération des données des fruits depuis la base de données
$sql = "SELECT * FROM fruits";
$result = $conn->query($sql);

$fruits = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $fruits[] = $row;
    }
}

// Fermeture de la connexion à la base de données
$conn->close();
?>

<!DOCTYPE html>
<html>

<head>
    <title> Fruits </title>
    <style>
        h1 {
            color: red;
            text-align: center;

        }

        .fruits-container {
            display: flex;
            flex-wrap: wrap;
        }

        .fruits {
            width: 200px;
            margin: 10px;
            text-align: center;
        }

        .fruits img {
            width: 100%;
            height: min-content;
        }

        .fruits p {
            margin-top: 10px;
        }
    </style>

</head>

<body>
    <h1>Fruits</h1>
    <div class="fruits-container">
        <?php foreach ($fruits as $fruit) : ?>
            <div class="fruits">
                <img src="<?php echo $fruit['image']; ?>" alt="<?php echo $fruit['word']; ?>">
                <p><?php echo $fruit['word']; ?></p>
                <button onclick="playSound('<?php echo $fruit['audio']; ?>')">Écouter le Son</button>
            </div>
        <?php endforeach; ?>
    </div>
    <script>
        function playSound(audioUrl) {
            var audio = new Audio(audioUrl);
            audio.play();
        }
    </script>
</body>

</html>