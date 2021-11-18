<?php 

    class Deposit extends MainController{
        private $usersTable = 'users';
        private $depositTable = 'depositcost';

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
            $rcvData['depositMoney'] = $DepositModel->slectAll($this->depositTable, $mess_name);
            
            $this->load->view('deposit', $rcvData);
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
                'deposit_tk'    => $taka, 
                'deposit_date' => $date,
                'mess_name'     => $mess_name
            );

            $UsersModel = $this->load->model("UsersModel");
            $rcvData = $UsersModel->userInsert($this->depositTable, $Data);
            header("Location: ".BASE_URL."/Deposit/home");
        }

        public function depositDetails($name){
            session_start();
            $user = $_SESSION['userData']; 
            $mess_name = $user['mess_name'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');
            $this->load->view('admin/content_title');

            $DepositModel = $this->load->model("DepositModel");
            
            $rcvData['SingleData'] = $DepositModel->depositDetails($this->depositTable, $mess_name, $name);

            $this->load->view('depositDetail', $rcvData);
            $this->load->view('admin/footer');
        }





































    }

?>