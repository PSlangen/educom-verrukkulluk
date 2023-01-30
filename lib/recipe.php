<?php
class recipe {

    private $connection;
    private $user;
    private $kitchentype;
    private $ingredient;
    private $recipeinfo;

    public function __construct($connection) {
        $this->connection = $connection;
        $this->user = new user ($connection);  
        $this->kitchentype = new kitchentype ($connection);
        $this->ingredient = new ingredient ($connection);
        $this->recipeinfo = new recipeinfo ($connection);
    }
  
    public function selectRecipe($recipe_id = null) {
        $sql = "select * from recipe";

        if ($recipe_id != null){
            $sql = "select * from recipe where id = $recipe_id";
        }

        $result = mysqli_query($this->connection, $sql);

        while ($recipe = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $user = $this -> fetchUser($recipe["user_id"]);
            $kitchen = $this -> fetchKitchenType($recipe["kitchen_id"]);
            $type = $this -> fetchKitchenType($recipe["type_id"]);
            $ingredients = $this -> fetchIngredients($recipe["id"]);
            $calories = $this -> calcCalories($ingredients);
            $price = $this -> calcPrice($ingredients);
            $rating = $this -> fetchRating($recipe["id"]);
            $preparation = $this -> fetchPreparation($recipe["id"]);
            $comments = $this -> fetchComments($recipe["id"]);
            $favorites = $this -> determineFavorite($recipe["id"]);
            
            $return [] = [
                "id" => $recipe["id"],
                "title" => $recipe["title"],
                "kitchen" => $kitchen["description"],
                "type" => $type["description"],
                "user" => $user["user_name"],
                "ingredients" => $ingredients,
                "calories" => $calories,
                "price" => $price,
                "rating" => $rating,
                "preparation" => $preparation,
                "comments" => $comments,
                "favorites" => $favorites
            ];
        }

        return($return);
    }

    private function fetchUser($user_id){
        return ($this->user->selectUser($user_id));  
    }

    private function fetchKitchenType($kitchentype_id){
        return ($this->kitchentype->selectKitchenType($kitchentype_id));  
    }

    private function fetchIngredients($ingredient_id){
        return ($this->ingredient->selectIngredient($ingredient_id)); 
    }

    private function fetchRating($recipe_id){
        return ($this->recipeinfo->selectInfo($recipe_id, 'R'));
    }

    private function fetchPreparation($recipe_id){
        return ($this->recipeinfo->selectInfo($recipe_id, 'P'));
    }

    private function fetchComments($recipe_id){
        return ($this->recipeinfo->selectInfo($recipe_id, 'C'));
    }

    private function determineFavorite($recipe_id){
        return ($this->recipeinfo->selectInfo($recipe_id, 'F'));
    }

    private function calcCalories($ingredients){
        $totalCalories = 0;
        foreach ($ingredients as $ingredient){
            $totalCalories += ($ingredient["number"]/$ingredient["package"]) * $ingredient["calories"];
        }
        return($totalCalories);
    }

    private function calcPrice($ingredients){
        $totalPrice = 0;
        foreach ($ingredients as $ingredient){
            $totalPrice += ($ingredient["number"]/$ingredient["package"]) * $ingredient["price"];
        }
        return($totalPrice);
    }

}