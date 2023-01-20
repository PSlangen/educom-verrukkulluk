<?php

class ingredient {

    private $connection;

    public function __construct($connection, $artikel) {
        $this->connection = $connection;
        $this->artikel = $artikel; //functies van artikel class aanhalen 
    }
  
    public function selectIngredient($gerecht_id) {
        $sql = "select * from ingredient where gerecht_id = $gerecht_id";
        $return = []; //lege array
        $result = mysqli_query($this->connection, $sql); 
        
        
        while ($ingredient = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $ingredient += $this-> ophalenArtikel ($ingredient["artikel_id"]); //toevoegen aan array
            $return [] = $ingredient; //lege array waar we ingredient aan toevoegen obv artikel_id
            
        }

        return($return);
    
    }

    private function ophalenArtikel($artikel_id){
        return ($this->artikel->selectArtikel($artikel_id)); //ophalen artikel 
    
    }


}