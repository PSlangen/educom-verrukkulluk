<?php

class groceries {

    private $connection;
    private $article;
    private $ingredient;
    private $user;

    public function __construct($connection) {
        $this->connection = $connection;
        $this->article = new article ($connection);
        $this->ingredient = new ingredient ($connection);
        $this->user = new user ($connection);
    }
  
    // public function addGroceries ($recipe_id){
    //     $ingredients = $this->fetchIngredients($recipe_id);
    //     return ($ingredients);
    // }





    // private function fetchIngredients($recipe_id){
    //     return ($this->ingredient->selectIngredient($recipe_id));
    // }





    public function ArticleOnList ($article_id, $user_id){
        $groceries = $this->fetchGroceries($user_id);

        foreach($groceries as $grocerie){
            if ($grocerie["article_id"] == $article_id){
                echo "test";
            }
        }
    }





    private function fetchGroceries ($user_id){
        $sql = "select * from groceries where user_id = $user_id";
        $result = mysqli_query($this->connection, $sql); 

        while ($groceries = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $return [] = $groceries;
        }
    
        return($return);

    }


    // public function addGroceries (){        
    //     $sql = "INSERT INTO groceries (article_id, user_id, name, price, units, package, number, calories)
    //     VALUES ($user_id, $article_id)"; 


}