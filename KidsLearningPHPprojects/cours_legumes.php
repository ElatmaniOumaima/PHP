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

// Récupération des données des legumes depuis la base de données
$sql = "SELECT * FROM legumes";
$result = $conn->query($sql);

$legumes = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $legumes[] = $row;
    }
}

// Fermeture de la connexion à la base de données
$conn->close();
?>

<!DOCTYPE html>
<html>

<head>
    <title> Legumes </title>
    <style>
        h1 {
            color: red;
            text-align: center;

        }

        .legumes-container {
            display: flex;
            flex-wrap: wrap;
        }

        .legumes {
            width: 200px;
            margin: 10px;
            text-align: center;
        }

        .legumes img {
            width: 100%;
            height: min-content;
        }

        .legumes p {
            margin-top: 10px;
        }
    </style>

</head>

<body>
    <h1>Legumes</h1>
    <div class="legumes-container">
        <?php foreach ($legumes as $legume) : ?>
            <div class="legumes">
                <img src="<?php echo $legume['image']; ?>" alt="<?php echo $legume['word']; ?>">
                <p><?php echo $legume['word']; ?></p>
                <button onclick="playSound('<?php echo $legume['audio']; ?>')">Écouter le Son</button>
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