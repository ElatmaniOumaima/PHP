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

// Récupération des données des animaux depuis la base de données
$sql = "SELECT * FROM animaux";
$result = $conn->query($sql);

$animaux = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $animaux[] = $row;
    }
}

// Fermeture de la connexion à la base de données
$conn->close();
?>

<!DOCTYPE html>
<html>

<head>
    <title>Animaux</title>
    <style>
        h1 {
            color: red;
            text-align: center;
        }

        .animaux-container {
            display: flex;
            flex-wrap: wrap;
        }

        .animaux {
            width: 200px;
            margin: 10px;
            text-align: center;
        }

        .animaux img {
            width: 100%;
            height: min-content;
        }

        .animaux p {
            margin-top: 10px;
        }
    </style>

</head>

<body>
    <h1>Animaux</h1>
    <div class="animaux-container">
        <?php foreach ($animaux as $animal) : ?>
            <div class="animaux">
                <img src="<?php echo $animal['image']; ?>" alt="<?php echo $animal['word']; ?>">
                <p><?php echo $animal['word']; ?></p>
                <button onclick="playSound('<?php echo $animal['audio']; ?>')">Écouter le Son</button>
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