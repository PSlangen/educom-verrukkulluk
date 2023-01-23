<?php

class recipeinfo {

    private $connection;

    public function __construct($connection, $user) {
        $this->connection = $connection;
        $this->user = $user; //functies van user class aanhalen 
    }
  
    public function selectInfo($recipe_id, $record_type) {
        $sql = "select * from recipeinfo where recipe_id = $recipe_id and record_type = '$record_type'";
        $return = []; 
        $result = mysqli_query($this->connection, $sql); 

        while ($recipeinfo = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            if ($record_type == "O" or $record_type == "F"){
                // echo "test";
                $user_id = $recipeinfo["user_id"];
                $user = $this -> fetchUser($user_id);
                $return [] = [
                    "id" => $ingredient ["id"],
                ]
            }


        };
    
        return($return);
    
    }

    private function fetchUser($user_id){
        return ($this->user->selectUser($user_id)); //ophalen user 
    
    }
}