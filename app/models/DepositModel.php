<?php 

    class DepositModel extends MainModel{

        public function __construct(){
            parent:: __construct();
        }

        public function slectAll($table, $mess_name){
            $sql = "SELECT (SUM(morning)+SUM(noon)+SUM(night)) as meal,user_name,
                    SUM(deposit_tk) as deposit,
                    SUM(market_cost) as market, 
                    SUM(extra_cost) as extra
                     FROM $table                    
                     WHERE mess_name='$mess_name'
                     group by user_name
                     ";
                     
             return $this->select($sql);
         }
         
         public function meal($table, $mess_name){
            $sql = "SELECT (SUM(morning)+SUM(noon)+SUM(night)) as meal,user_name,
                    SUM(deposit_tk) as deposit,
                    SUM(market_cost) as market, 
                    SUM(extra_cost) as extra
                    FROM $table                    
                    WHERE mess_name='$mess_name' ";
                     
             return $this->select($sql);
         }
        
         
        //  public function depositTk($table, $mess_name){
        //    $sql = "SELECT SUM(deposit_tk) as taka,user_name
        //             FROM $table                    
        //             WHERE mess_name='$mess_name'
        //             group by user_name
        //             order by user_name";
                    
        //     return $this->select($sql);
        // }

        public function cost($table, $mess_name){
            $sql = "SELECT SUM(market_cost)  as market,SUM(extra_cost)as extra,user_name,deposit_date
                     FROM $table                    
                     WHERE mess_name='$mess_name'
                     group by deposit_date
                     order by deposit_date";
                     
             return $this->select($sql);
         }

        //  public function extraCost($table, $mess_name){
        //     $sql = "SELECT SUM(extra_cost) as taka,user_name
        //              FROM $table                    
        //              WHERE mess_name='$mess_name'
        //              group by user_name
        //              order by user_name";
                     
        //      return $this->select($sql);
        //  }        

        public function depositDetails($table, $mess_name, $name){
            $sql = "SELECT SUM(deposit_tk) as deposit_tk,user_name,deposit_date
                    FROM $table                    
                    WHERE mess_name='$mess_name' AND user_name='$name'
                    group by deposit_date";
                    
            return $this->select($sql);
        }

        public function mealDetails($table, $mess_name, $name){
            $sql = "SELECT SUM(morning) as morning,SUM(noon) as noon,SUM(night) as night,user_name,deposit_date
                    FROM $table                    
                    WHERE mess_name='$mess_name' AND user_name='$name'
                    group by deposit_date";
                    
            return $this->select($sql);
        }

        
        public function totalMember($table, $mess_name){
            $sql = "SELECT *
                     FROM $table                    
                     WHERE mess_name='$mess_name' ";
                     
             return $this->count($sql);
         }
    }