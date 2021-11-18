<?php 

    class UsersModel extends MainModel{

        public function __construct(){
            parent:: __construct();
        }

        public function userInsert($table, $Data){
            $key    = array_keys($Data);
            $keys   = implode(",", $key);
            $placeholder = ":" . implode(", :", $key);
            $sql = "INSERT INTO $table ($keys) VALUES ($placeholder)";

            return $this->insert($sql,$Data);
        }

        public function checkUser($table, $email, $pass){
            $sql = "SELECT * FROM $table WHERE email='$email' AND pass='$pass'";
            return $this->count($sql);
        }

        public function getUser($usersTable, $roleTable, $email, $pass){

            $sql = "SELECT $usersTable.*, $roleTable.role_name
                    FROM $usersTable
                    INNER JOIN $roleTable
                    ON $usersTable.role_id = $roleTable.role_id
                    WHERE $usersTable.email='$email' AND $usersTable.pass='$pass'";

            return $this->select($sql);
        }

        public function memberList($table, $mess_name){
            $sql = "SELECT * FROM $table 
                    WHERE mess_name='$mess_name'
                    order by name";

            return $this->select($sql);
        }

        public function memberCount($table, $mess_name){
            $sql = "SELECT * FROM $table WHERE mess_name='$mess_name'";
            return $this->count($sql);
        }
        
        public function selectUserById($table, $name, $mess_name){
            $sql = "SELECT * FROM $table WHERE name='$name' AND mess_name='$mess_name' ";
            return $this->select($sql);
        }
        
        // public function updateUser($table, $Data, $id){
        public function updateUser($usersTable, $depositTable, $rname, $email, $pass, $name, $mess_name){
        //     $pairValue = NULL;
        //     foreach ($Data as $key => $value) {
        //        $pairValue .= ("$key=:$key,");
        //     }
        //      $finalPair = rtrim($pairValue,",");
        //   echo  $sql = "UPDATE $table SET $finalPair WHERE id=$id ";

            $sql = "
                    UPDATE $usersTable SET name='$rname',email='$email',pass='$pass' WHERE name='$name' AND mess_name='$mess_name';
                    UPDATE $depositTable SET user_name='$rname' WHERE user_name='$name' AND mess_name='$mess_name'; 
                ";

            return $this->update($sql);
        }

        public function deleteUser($table, $id){
            $sql = "DELETE FROM $table 
                    WHERE id=$id; ";

            return $this->delete($sql);
        }

        public function reset($table, $messName){
            $sql = "DELETE FROM $table WHERE mess_name='$messName'";

            return $this->delete($sql);
        }































    }

?>