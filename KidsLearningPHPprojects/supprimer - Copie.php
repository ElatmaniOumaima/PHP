<?php
  //connexion a la base de données
  include_once "connexion.php";
  //récupération de l'id dans le lien
  $id= $_GET['id'];
  //requête de suppression
  $q2="DELETE FROM utilisateur WHERE id='$id'";
  $req = $con->query($q2);
  //redirection vers la page index.php
  header("Location:index.php");
?>