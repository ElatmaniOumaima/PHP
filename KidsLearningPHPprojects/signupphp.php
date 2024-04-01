<?php
$server="localhost";
$nameu="root";
$psw="";
$dbs="sign_in";
$connexion = new mysqli($server,$nameu,$psw,$dbs);
class Users{
    private $email;
    private $password;
    public function sign_up($email,$password){
        $this->email=$email;
        $this->password=$password;
        $requete="SELECT * FROM sign WHERE email='$this->email' ";
        global $connexion;
        $connected=$connexion->query($requete);
        if($connected->num_rows>=1){
            echo "le compte est déja existé";
            // Ouvrir une autre page dans une nouvelle fenêtre
            echo '<script type="text/javascript">';
            echo 'window.open("sign_in.php", "_blank");'; // Remplacez "nouvelle_page.php" par le chemin de la page que vous souhaitez ouvrir
            echo '</script>';
        }
        else{
            $rqinsertion="INSERT INTO sign(email,PSW) VALUES('$this->email','$this->password')";
            $reslt=$connexion ->query($rqinsertion);
           
            if($reslt==true){
                echo "votre enregistrement est validée";
            }  
        }
    }
}
$User1=new Users();
$User1->sign_up($_POST['email'],$_POST['PSW']);
 ?>
