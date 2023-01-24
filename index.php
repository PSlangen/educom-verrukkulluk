<?php

require_once("lib/database.php");
require_once("lib/artikel.php");
require_once("lib/user.php");
require_once("lib/keukentype.php");
require_once("lib/ingredient.php");
require_once("lib/gerecht_info.php");

/// INIT
$db = new database();
// $art = new article ($db->getConnection());
$usr = new user($db->getConnection());
// $kt = new kitchentype($db->getConnection());
// $ing = new ingredient($db->getConnection(), $art);
$info = new recipeinfo($db->getConnection(), $usr);



/// VERWERK 
// $articleData = $art->selectArticle(1);
// $userData = $usr->selectUser(1);
// $kitchentypeData = $kt->selectKitchentype(1);
// $ingredientData = $ing->selectIngredient(2);
$recipeinfoData = $info->selectInfo(2, 'F');
$recipeinfoData = $info->addFavorite(2, 1,);


// /// RETURN
// echo "<pre>";
// // var_dump($articleData);
// // echo "<br>";
// // var_dump($userData);
// // echo "<br>";
// // var_dump($kitchentypeData);
// // echo "<br>";
// echo "<pre>";
// var_dump($ingredientData);
// echo "<br>";
echo "<pre>";
var_dump($recipeinfoData);
echo "<br>";