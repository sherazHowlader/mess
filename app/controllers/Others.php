<?php 

    class Others extends MainController{
        private $usersTable = 'users';
        private $extraCostTable = 'depositcost';

        public function __construct() {
            parent::__construct();
        }

        public function home(){
            $this->others();
        }

        public function others(){
            session_start();
            $user = $_SESSION['userData']; 
            $mess_name = $user['mess_name'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');           
            $this->load->view('admin/content_title');           
            
            $UsersModel = $this->load->model("UsersModel");
            $DepositModel = $this->load->model("DepositModel");

            $rcvData['memberList']  = $UsersModel->memberList($this->usersTable, $mess_name);
            $rcvData['showAllData'] = $DepositModel->cost($this->extraCostTable, $mess_name);

            $this->load->view('extra_cost', $rcvData);
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
                'extra_cost'    => $taka, 
                'deposit_date'  => $date,
                'mess_name'     => $mess_name
            );

            $UsersModel = $this->load->model("UsersModel");
            $rcvData = $UsersModel->userInsert($this->extraCostTable, $Data);
            header("Location: ".BASE_URL."/Others/home");
        }

        public function personDetails($name){
            session_start();
            $user = $_SESSION['userData']; 
            $mess_name = $user['mess_name'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');
            $this->load->view('admin/content_title');
            
            $DepositModel = $this->load->model("DepositModel");

            $rcvData['SingleData'] = $DepositModel->SingleData($this->extraCostTable, $mess_name, $name);

            $this->load->view('SingleData', $rcvData);
            $this->load->view('admin/footer');
        }





































    }

?>