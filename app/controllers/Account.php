<?php 

    class Account extends MainController{
        private $usersTable = 'users';
        private $depositTable = 'depositcost';

        public function __construct() {
            parent::__construct();
        }

        public function Home(){
            session_start();
            $user       = $_SESSION['userData']; 
            $mess_name  = $user['mess_name'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');
            $this->load->view('admin/content_title'); 
                        
            $DepositModel = $this->load->model("DepositModel");                  
                      
            $rcvData['allData'] = $DepositModel->slectAll($this->depositTable, $mess_name);            
            $rcvData['totalMember']   = $DepositModel->totalMember($this->usersTable, $mess_name);

            $this->load->view('finalAccount', $rcvData);
            $this->load->view('admin/footer');
        }


    }
?>