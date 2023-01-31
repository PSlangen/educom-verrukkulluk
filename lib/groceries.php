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
  
    public function addGroceries ($recipe_id, $user_id){
        $ingredients = $this->fetchIngredients($recipe_id);

        foreach ($ingredients as $ingredient){
            if (!$this -> ArticleOnList ($ingredient["article_id"], $user_id)){
                $this -> addArticle ($ingredient["article_id"], $user_id); //ArticleOnList = false
            }
            else{
                $this -> updateArticle ($ingredient["article_id"], $user_id); //ArticleOnList = true
            }
        }
    }

    private function ArticleOnList ($article_id, $user_id){
        $groceries = $this->fetchGroceries($user_id);
        foreach($groceries as $grocery){
            if ($grocery["article_id"] == $article_id){
               return ($grocery);
            }
        }
        return(false);
    }

    private function fetchGroceries ($user_id){
        $sql = "select * from groceries where user_id = $user_id";
        $result = mysqli_query($this->connection, $sql); 
        $return = [];
        while ($groceries = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $return [] = $groceries;
        }
    
        return($return);
    }

    private function fetchIngredients($recipe_id){
        return ($this->ingredient->selectIngredient($recipe_id));
    }

    private function addArticle ($article_id, $user_id){
        $calcNumber = 1;

        $sql = "INSERT INTO groceries (article_id, user_id, number) 
        VALUES ($article_id, $user_id, $calcNumber)";
        $result = mysqli_query($this->connection, $sql); 
        return ($result);
    }

    private function updateArticle($article_id, $user_id){

        $calcNumber = 120;
        $sql = "UPDATE groceries SET number=$calcNumber WHERE article_id=$article_id AND user_id=$user_id";
        $result = mysqli_query($this->connection, $sql); 
        return ($result);
    }

    private function calcNumber ($ingredients){
        $ingredientNumber = (ceil($ingredient["number"]/$article["package"]));
        return($ingredientNumber);

    }

}