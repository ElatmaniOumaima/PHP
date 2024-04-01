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

// Récupération des données des nombres depuis la base de données
$sql = "SELECT * FROM nombres";
$result = $conn->query($sql);

$nombres = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $nombres[] = $row;
    }
}

// Fermeture de la connexion à la base de données
$conn->close();
?>

<!DOCTYPE html>
<html>

<head>
    <title> Nombres </title>
    <style>
        h1 {
            color: red;
            text-align: center;

        }

        .nombres-container {
            display: flex;
            flex-wrap: wrap;
        }

        .nombres {
            width: 200px;
            margin: 10px;
            text-align: center;
        }

        .nombres img {
            width: 100%;
            height: min-content;
        }

        .nombres p {
            margin-top: 10px;
        }
    </style>

</head>

<body>
    <h1>Nombres</h1>
    <div class="nombres-container">
        <?php foreach ($nombres as $nombre) : ?>
            <div class="nombres">
                <img src="<?php echo $nombre['image']; ?>" alt="<?php echo $nombre['nombre']; ?>">
                <p><?php echo $nombre['nombre']; ?></p>
                <button onclick="playSound('<?php echo $nombre['audio']; ?>')">Écouter le Son</button>
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