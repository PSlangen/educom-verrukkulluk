<?php
//// Allereerst zorgen dat de "Autoloader" uit vendor opgenomen wordt:
require_once("./vendor/autoload.php");

/// Twig koppelen:
$loader = new \Twig\Loader\FilesystemLoader("./templates");
/// VOOR PRODUCTIE:
/// $twig = new \Twig\Environment($loader), ["cache" => "./cache/cc"]);

/// VOOR DEVELOPMENT:
$twig = new \Twig\Environment($loader, ["debug" => true ]);
$twig->addExtension(new \Twig\Extension\DebugExtension());

/******************************/

/// Next step, iets met je data doen. Ophalen of zo
require_once("lib/database.php");
require_once("lib/article.php");
require_once("lib/user.php");
require_once("lib/kitchentype.php");
require_once("lib/ingredient.php");
require_once("lib/recipe_info.php");
require_once("lib/recipe.php");
require_once("lib/groceries.php");


$db = new database();
$article = new article ($db->getConnection());
$user = new user($db->getConnection());
$kitchentype = new kitchentype($db->getConnection());
$ingredient = new ingredient($db->getConnection(), $article);
$recipeinfo = new recipeinfo($db->getConnection(), $user);
$recipe = new recipe ($db->getConnection(), $user, $kitchentype, $ingredient, $recipeinfo);
$groceries = new groceries ($db->getConnection(), $user, $ingredient, $article);




// echo "<pre>";
// var_dump($ratingData);
// echo "<br>";




/*
URL:
http://localhost/index.php?recipe_id=4&action=detail
*/

$recipe_id = isset($_GET["recipe_id"]) ? $_GET["recipe_id"] : "";
$user_id = isset($_GET["user_id"]) ? $_GET["user_id"] : "1";
$rating = isset($_GET["rating"]) ? $_GET["rating"] : "";
$article_id = isset($_GET["article_id"]) ? $_GET["article_id"] : "";
$number = isset($_GET["number"]) ? $_GET["number"] : "";
$keyword = isset($_GET["keyword"]) ? $_GET["keyword"] : "";

$action = isset($_GET["action"]) ? $_GET["action"] : "homepage";


switch($action) {

    case "homepage": {
        $data = $recipe->selectRecipe();
        $template = 'homepage.html.twig';
        $title = "homepage";
        break;
    }

    case "detail": {
        $data = $recipe->selectRecipe($recipe_id);
        $template = 'detail.html.twig';
        $title = "detail pagina";
        break;
    }

    case "addfav": {
        $recipeinfo -> addFavorite($recipe_id, $user_id);
        header("Content-Type: application/json");
        $result = ["status" => true];
        $JSON = json_encode($result);
        echo($JSON);
        exit;
        break;
    }

    case "deletefav": {
        $recipeinfo->deleteFavorite($recipe_id, $user_id);
        header("Content-Type: application/json");
        $result = ["status" => false];
        $JSON = json_encode($result);
        echo($JSON);
        exit;
        break;
    }

    case "rate": {
        $recipeinfo->addRating($recipe_id, $rating);
        echo $recipe->selectRecipe($recipe_id)[0]["avgRating"];
        exit;
        break;
    }

    case "groceries": {
        $data = $groceries->fetchGroceries ($user_id);
        $template = 'groceries.html.twig';
        $title = "Boodschappen";
        break;
    }

    case "addgroceries": {
        $groceries->addGroceries ($recipe_id, $user_id);
        $data = $groceries->fetchGroceries ($user_id);
        $template = 'groceries.html.twig';
        $title = "Boodschappen";
        break;
    }

    case "delgrocery": {
        $data = $groceries->deleteGrocery ($article_id, $user_id);
        break;
    }

    case "delgroceries": {
        $data = $groceries->deleteGroceries ($user_id);
        exit;
        break;
    }

    case "updategrocery": {
        $groceries-> updateGrocery ($article_id, $user_id, $number);
        $data = $groceries->fetchGroceries ($user_id);
        $template = 'groceries.html.twig';
        $title = "Boodschappen";
        break;
    }

    case "search": {
        $data = $recipe->searchRecipes ($keyword);
        $template = 'homepage.html.twig';
        $title = "Resultaten";
        break;
    }


}


/// Onderstaande code schrijf je idealiter in een layout klasse of iets dergelijks
/// Juiste template laden, in dit geval "homepage"
$template = $twig->load($template);


/// En tonen die handel!
echo $template->render(["title" => $title, "data" => $data, "user_id" => 1]);

?>