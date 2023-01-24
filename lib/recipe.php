<?php
class recipe {

    private $connection;

    public function __construct($connection, $user, $ingredient) {
        $this->connection = $connection;
        $this->user = $user;  
        $this->ingredient = $ingredient;
    }
  
    public function selectRecipe($recipe_id) {
        $sql = "select * from recipe where id = $recipe_id";
        $result = mysqli_query($this->connection, $sql);
        $recipe = mysqli_fetch_array($result, MYSQLI_ASSOC);

        $user_id = $recipe["user_id"];
        $user = $this -> fetchUser($user_id);


        $return [] = array_merge($recipe, $user);
        return($return);
    }

    private function fetchUser($user_id){
        return ($this->user->selectUser($user_id));  
    }

    // private function fetchIngredient($ingredient_id){
    //     return ($this->ingredient->selectIngredient($ingredient_id)); 
    // }

    private function calcCalories(){
        
    }



}