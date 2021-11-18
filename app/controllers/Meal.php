<?php 

    class Meal extends MainController{
        private $usersTable = 'users';
        private $mealTable = 'depositcost';

        public function __construct() {
            parent::__construct();
        }

        public function home(){
            $this->meal();
        }

        public function meal(){
            session_start();
            $user = $_SESSION['userData']; 
            $mess_name = $user['mess_name'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');           
            $this->load->view('admin/content_title');           
            
            $UsersModel = $this->load->model("UsersModel");
            $DepositModel = $this->load->model("DepositModel");

            $rcvData['memberList']  = $UsersModel->memberList($this->usersTable, $mess_name);
            $rcvData['showAllMeal'] = $DepositModel->slectAll($this->mealTable, $mess_name);

            $this->load->view('meal', $rcvData);
            $this->load->view('admin/footer');
        }

        public function deposit(){
            session_start();
            $user = $_SESSION['userData'];

            $name       = $_REQUEST['user_name'];
            $morning    = $_REQUEST['morning'];
            $noon       = $_REQUEST['noon'];
            $night      = $_REQUEST['night'];  
            $date       = $_REQUEST['deposite_date'];
            
            $mess_name  = $user['mess_name'];

            $Data = array(
                'user_name'     => $name, 
                'morning'       => $morning, 
                'noon'          => $noon, 
                'night'         => $night, 
                'deposit_date' => $date,
                'mess_name'     => $mess_name
            );

            $UsersModel = $this->load->model("UsersModel");
            $rcvData = $UsersModel->userInsert($this->mealTable, $Data);
            header("Location: ".BASE_URL."/Meal/home");
        }

        public function mealDetails($name){
            session_start();
            $user = $_SESSION['userData']; 
            $mess_name = $user['mess_name'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');
            $this->load->view('admin/content_title');            
           
            $DepositModel = $this->load->model("DepositModel");
            
            $rcvData['mealSingle'] = $DepositModel->mealDetails($this->mealTable, $mess_name, $name);

            $this->load->view('mealDetails', $rcvData);
            $this->load->view('admin/footer');
        }





































    }

?>