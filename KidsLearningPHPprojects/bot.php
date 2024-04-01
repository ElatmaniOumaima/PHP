<!-- php start for bot-->
<!-- step 1 => create database for response and user messages -->
<!-- step 2 => create a connection -->

<?php
$server = "localhost";
$username = "root";
$password = "" ;
$dbs="sign_in";

$conn = new mysqli($server,$username,$password,$dbs);

if($conn){
$user_messages = mysqli_real_escape_string($conn, $_POST['messageValue']);

$query = "SELECT * FROM bot WHERE message LIKE '%$user_messages%'";
$runQuery = $conn->query($query);

if(mysqli_num_rows($runQuery) > 0){
    // fetch result
    $result = mysqli_fetch_assoc($runQuery);
    // echo result
    echo $result['reponse'];
}else{
    echo "je vous ai pas compris";
}
}else{
    echo "connection Failed " . mysqli_connect_errno();
}
$conn->close();
?>