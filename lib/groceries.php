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
                $this -> addArticle ($ingredient, $user_id); //ArticleOnList = false
            }
            else{
                $this -> updateArticle ($ingredient, $user_id); //ArticleOnList = true
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

    public function fetchGroceries ($user_id){
        $sql = "select * from groceries where user_id = $user_id";
        $result = mysqli_query($this->connection, $sql); 
        $return = [];

        while ($groceries = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $article = $this -> fetchArticle($groceries["article_id"]);
            $return [] = [
                "article_id" => $groceries["article_id"],
                "user_id" => $groceries["user_id"],
                "number" => $groceries["number"],
                "article" => $article,
            ];
        }
    
        return($return);
    }

    private function fetchIngredients($recipe_id){
        return ($this->ingredient->selectIngredient($recipe_id));
    }

    private function fetchArticle($article_id){
        return ($this->article->selectArticle($article_id));
    }
    

    private function addArticle ($ingredient, $user_id){
        $article_id = $ingredient["article_id"];
        $groceryNumber = (ceil($ingredient["number"]/$ingredient["package"]));

        $sql = "INSERT INTO groceries (article_id, user_id, number) 
        VALUES ($article_id, $user_id, $groceryNumber)";
        $result = mysqli_query($this->connection, $sql); 
        return ($result);
    }

    private function updateArticle ($ingredient, $user_id){
        $article_id = $ingredient["article_id"];
        $groceryNumber = $this->calcNumber($ingredient, $user_id);

        $sql = "UPDATE groceries SET number=$groceryNumber WHERE article_id=$article_id AND user_id=$user_id";
        $result = mysqli_query($this->connection, $sql); 
        return ($result);
    }

    private function calcNumber ($ingredient, $user_id){
        $grocery = $this->ArticleOnList($ingredient["article_id"], $user_id);
        $groceryNumber = (ceil($ingredient["number"]/$ingredient["package"]));

        if ($grocery){
            $groceryNumber += $grocery["number"];
        }

        return($groceryNumber);
        
    }

}