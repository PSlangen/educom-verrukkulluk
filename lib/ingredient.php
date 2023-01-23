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
            $artikel_id = $ingredient["artikel_id"];
            $artikel = $this -> ophalenArtikel($artikel_id);
            $return [] = [              //lege array waar we ingredienten aan toevoegen obv artikel_id
                "id" => $ingredient ["id"],
                "aantal" => $ingredient ["aantal"],
                "naam" => $artikel ["naam"],
                "omschrijving" => $artikel ["omschrijving"],
                "prijs" => $artikel ["prijs"],
                "eenheid" => $artikel ["eenheid"],
                "verpakking" => $artikel ["verpakking"]
            ]; 
            
        }

        return($return);
    
    }

    private function ophalenArtikel($artikel_id){
        return ($this->artikel->selectArtikel($artikel_id)); //ophalen artikel 
    
    }

}