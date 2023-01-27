<?php

class groceries {

    private $connection;

    public function __construct($connection) {
        $this->connection = $connection;
    }
  
    public function selectGroceries($recipe_id) {

    }













    
    public function addGroceries (){        
        $sql = "INSERT INTO groceries (user_id, article_id)
        VALUES ($user_id, $article_id)"; 

        $result = mysqli_query($this->connection, $sql); 
        return ($result);
    }
}