<?php 

    class Market extends MainController{
        private $usersTable = 'users';
        private $marketTable = 'depositcost';

        public function __construct() {
            parent::__construct();
        }

        public function Home(){
            session_start();
            $user = $_SESSION['userData']; 
            $mess_name = $user['mess_name'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');           
            $this->load->view('admin/content_title');           
            
            $UsersModel = $this->load->model("UsersModel");
            $DepositModel = $this->load->model("DepositModel");

            $rcvData['memberList']  = $UsersModel->memberList($this->usersTable, $mess_name);
            $rcvData['market_cost'] = $DepositModel->cost($this->marketTable, $mess_name);

            $this->load->view('market', $rcvData);
            $this->load->view('admin/footer');
        }

        public function deposit(){
            session_start();
            $user = $_SESSION['userData'];

            $name   = $_REQUEST['user_name'];
            $taka   = $_REQUEST['taka'];
            $date   = $_REQUEST['deposite_date'];
            
            $mess_name = $user['mess_name'];

            $Data = array(
                'user_name'     => $name, 
                'market_cost'   => $taka, 
                'deposit_date'  => $date,
                'mess_name'     => $mess_name
            );

            $UsersModel = $this->load->model("UsersModel");
            $rcvData = $UsersModel->userInsert($this->marketTable, $Data);
            header("Location: ".BASE_URL."/Market/home");
        }

        public function personDetails($name){
            session_start();
            $user = $_SESSION['userData']; 
            $mess_name = $user['mess_name'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');
            $this->load->view('admin/content_title');            
            
            $DepositModel = $this->load->model("DepositModel");
           
            $rcvData['SingleData'] = $DepositModel->SingleData($this->marketTable, $mess_name, $name);

            $this->load->view('SingleData', $rcvData);
            $this->load->view('admin/footer');
        }





































    }

?>