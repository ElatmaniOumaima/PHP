<?php
$server="localhost";
$nameu="root";
$psw="";
$dbs="sign_in";
$connexion = new mysqli($server,$nameu,$psw,$dbs);
class Users{
    private $email;
    private $password;
    public function sign($email,$password){
        $this->email=$email;
        $this->password=$password;
        $requete="SELECT * FROM sign WHERE email='$this->email' AND PSW='$this->password'";
        global $connexion;
        $connected=$connexion->query($requete);
        if($connected->num_rows>=1){
            echo "Connexion réussie !";
            // Ouvrir une autre page dans une nouvelle fenêtre
            echo '<script type="text/javascript">';
            echo 'window.open("HOME.php", "_self");'; // Remplacez "nouvelle_page.php" par le chemin de la page que vous souhaitez ouvrir
            echo '</script>';
        }
        else{
            echo '<script type="text/javascript">';
            echo 'window.open("signUp.php", "_self");'; // Remplacez "nouvelle_page.php" par le chemin de la page que vous souhaitez ouvrir
            echo '</script>';
           
        }
    }
}

$User1=new Users();
$User1->sign($_POST['email'],$_POST['PSW']);
 ?>