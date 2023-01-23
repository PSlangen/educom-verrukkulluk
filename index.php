<?php

require_once("lib/database.php");
require_once("lib/artikel.php");
require_once("lib/user.php");
require_once("lib/keukentype.php");
require_once("lib/ingredient.php");

/// INIT
$db = new database();
$art = new artikel($db->getConnection());
$usr = new user($db->getConnection());
$kt = new keukentype($db->getConnection());
$ing = new ingredient($db->getConnection(), $art);


/// VERWERK 
$artikelData = $art->selectArtikel(1);
$userData = $usr->selectUser(1);
$keukentypeData = $kt->selectKeukentype(1);
$ingredientData = $ing->selectIngredient(1);

// /// RETURN
// echo "<pre>";
// // var_dump($artikelData);
// // echo "<br>";
// // var_dump($userData);
// // echo "<br>";
// // var_dump($keukentypeData);
// echo "<br>";
echo "<pre>";
var_dump($ingredientData);
echo "<br>";
