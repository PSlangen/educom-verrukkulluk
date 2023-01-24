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
        $user = [];
        $result = mysqli_query($this->connection, $sql); 

        while ($recipeinfo = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            if ($record_type == "C" or $record_type == "F"){
                $user_id = $recipeinfo["user_id"];
                $user = $this -> fetchUser($user_id);
            }
            $return [] = array_merge($recipeinfo, $user);
        }

        return($return);
    }

    private function fetchUser($user_id){
        return ($this->user->selectUser($user_id)); //ophalen user 
    }

    public function addFavorite ($recipe_id, $user_id){         //Add user_id and 'F' to ["record_type"] in DB.

        $sql = "INSERT INTO recipeinfo (recipe_id, user_id, record_type)
        VALUES ($recipe_id, $user_id, 'F')"; 
        $result = mysqli_query($this->connection, $sql); 
        return ($result);
    }

    public function deleteFavorite($recipe_id, $user_id){       //Remove user_id and 'F' from ["record_type"] in DB.
        $sql = "DELETE FROM recipeinfo WHERE recipe_id=$recipe_id AND user_id=$user_id AND record_type='F'";
        $result = mysqli_query($this->connection, $sql); 
        return ($result);
    }
}