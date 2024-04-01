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

// Récupération des questions et réponses
$sql = "SELECT * FROM questions";
$result = $conn->query($sql);

$quiz = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $question = array(
            "id" => $row["id"],
            "question" => $row["question"],
            "reponses" => array()
        );

        $questionId = $row["id"];
        $sql = "SELECT * FROM reponses WHERE question_id = $questionId";
        $responseResult = $conn->query($sql);

        if ($responseResult->num_rows > 0) {
            while ($responseRow = $responseResult->fetch_assoc()) {
                $response = array(
                    "id" => $responseRow["id"],
                    "reponse" => $responseRow["reponse"],
                    "correcte" => $responseRow["correcte"]
                );

                $question["reponses"][] = $response;
            }
        }

        $quiz[] = $question;
    }
}

// Gestion des réponses
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $score = 0;
    foreach ($quiz as $question) {
        $questionId = $question["id"];
        $responseId = $_POST["question_" . $questionId];
        $sql = "SELECT correcte FROM reponses WHERE id = $responseId AND question_id = $questionId";
        $responseResult = $conn->query($sql);

        if ($responseResult->num_rows > 0) {
            $responseRow = $responseResult->fetch_assoc();
            $correcte = $responseRow["correcte"];

            if ($correcte == 1) {
                $score++;
            }
        }
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Quiz</title>
    <style>
        body {
            background-image: url('image/aaa.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
        }

        .title {
            text-align: center;
            padding: 20px;
        }

        .title img {
            width: 200px;
            /* Ajustez la largeur de l'image selon vos besoins */
            height: auto;
            /* Permet à la hauteur de l'image de s'ajuster proportionnellement à la largeur */
        }

        .question {
            font-weight: bold;
            margin-bottom: 10px;
            color: #555555;
        }

        .reponse {
            margin-bottom: 5px;
            color: #666666;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .score {
            color: #333333;
            font-size: 18px;
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="title">
        <img src="image/image-222.jpg" alt="Logo de la Page">
    </div>

    <?php if (empty($_POST)) { ?>
        <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <?php foreach ($quiz as $question) { ?>
                <div class="question"><?php echo $question["question"]; ?></div>
                <?php foreach ($question["reponses"] as $response) { ?>
                    <div class="reponse">
                        <input type="radio" name="question_<?php echo $question["id"]; ?>" value="<?php echo $response["id"]; ?>">
                        <?php echo $response["reponse"]; ?>
                    </div>
                <?php } ?>
            <?php } ?>
            <br>
            <input type="submit" value="Soumettre">
        </form>
    <?php } else { ?>
        <h2>Votre score : <?php echo $score; ?>/<?php echo count($quiz); ?></h2>
    <?php } ?>
</body>

</html