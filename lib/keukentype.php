<?php

class kitchentype {

    private $connection;

    public function __construct($connection) {
        $this->connection = $connection;
    }
  
    public function selectKitchenType($kitchentype_id) {

        $sql = "select * from kitchentype where id = $kitchentype_id";
        
        $result = mysqli_query($this->connection, $sql);
        $kitchentype = mysqli_fetch_array($result, MYSQLI_ASSOC);

        return($kitchentype);

    }


}