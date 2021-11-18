<?php 

    class FinalAccount extends MainModel{

        public function __construct(){
            parent:: __construct();
        }

        // public function total($table, $mess_name){
        //     $sql = "SELECT (SUM(morning)+SUM(noon)+SUM(night)) as meal, 
        //             SUM(extra_cost) as extra,
        //             SUM(market_cost) as market
        //              FROM $table                    
        //              WHERE mess_name='$mess_name' ";

        //      return $this->select($sql);
        //  }

        //  public function totalMember($table, $mess_name){
        //     $sql = "SELECT *
        //              FROM $table                    
        //              WHERE mess_name='$mess_name' ";
                     
        //      return $this->selectUser($sql);
        //  }
    }