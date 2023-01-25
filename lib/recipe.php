<?php
class recipe {

    private $connection;

    public function __construct($connection, $user, $kitchentype, $ingredient) {
        $this->connection = $connection;
        $this->user = $user;  
        $this->kitchentype = $kitchentype;
        $this->ingredient = $ingredient;
    }
  
    public function selectRecipe($recipe_id) {
        $sql = "select * from recipe where id = $recipe_id";
        $result = mysqli_query($this->connection, $sql);
        

        while($recipe = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $user = $this -> fetchUser($recipe["user_id"]);
            $kitchen = $this -> fetchKitchenType($recipe["kitchen_id"]);
            $type = $this -> fetchKitchenType($recipe["type_id"]);
            $ingredient = $this -> fetchIngredients($recipe["id"]);
            
            $return [] = [
                "id" => $recipe["id"],
                "title" => $recipe["title"],
                "kitchen" => $kitchen["description"],
                "type" => $type["description"],
                "user" => $user["user_name"],
                "ingredients" => $ingredient
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

    private function calcCalories($recipe_id){

    }



}