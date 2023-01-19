<?php

class ingredient {

    private $connection;

    public function __construct($connection) {
        $this->connection = $connection;
    }
  
    public function selectIngredient($gerecht_id) {

        $sql = "select * from ingredient where gerecht_id = $gerecht_id";
        $return = [];
        $result = mysqli_query($this->connection, $sql);
        
        
        while ($ingredient = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            // echo "<h1>" . $row["artikel_id"] . "<h1>";
            $return [] = $ingredient;
            
        }

        return($return);
    
    }


}