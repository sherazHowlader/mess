<?php 

    class Index extends MainController{

        private $usersTable = 'users';
        private $roleTable  = 'role';
        private $depositTable = 'depositcost';

        public function __construct() {
            parent::__construct();
        }

        public function home(){
            $this->login();
        }

        public function signUp(){
            $this->load->view('login/register');
        }

        public function userInfo(){
           $name = $_REQUEST['name'];
           $email = $_REQUEST['email'];
           $pass = $_REQUEST['pass'];

           $this->load->view('login/messInfo');
        }

        public function createUser(){
            $name = $_REQUEST['name'];
            $email = $_REQUEST['email'];
            $pass = $_REQUEST['pass'];

            $mess_name = $_REQUEST['messName'];
            $phn = $_REQUEST['phn'];

            $Data = array(
                'name'      => $name,
                'email'     => $email,
                'pass'      => $pass,
                'mess_name' => $mess_name,
                'phn'       => $phn
            );

            $UsersModel = $this->load->model("UsersModel");
            $rcvData = $UsersModel->userInsert($this->usersTable, $Data);

            header("Location: ".BASE_URL."/Index/login");
         }

         public function login(){
            session_start();            
            if (isset($_SESSION['userData'])) {
                header("Location: ".BASE_URL."/dashboard/home");
            }
            $this->load->view('login/logIn');
         }

         public function loginAuth(){
            $email = $_REQUEST['email'];
            $pass = $_REQUEST['pass'];

            $UsersModel = $this->load->model("UsersModel");
            $rcvData = $UsersModel->checkUser($this->usersTable, $email, $pass);

            if ($rcvData > 0) {
                $rcvData = $UsersModel->getUser($this->usersTable, $this->roleTable, $email, $pass);
                session_start();
                $_SESSION['userData'] = $rcvData[0];
                header("Location: ".BASE_URL."/Dashboard/home");
            }else{
                header("Location: ".BASE_URL."/Index/signup?msg=user not found");
            }
         }

         public function member(){
            session_start();
            $user = $_SESSION['userData'];

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');
            $this->load->view('admin/content_title');

            $role_id = '3';
            $mess_name = $user['mess_name'];
            $UsersModel = $this->load->model("UsersModel");
            $rcvData['memberList'] = $UsersModel->memberList($this->usersTable, $mess_name, $role_id);

            $this->load->view('member', $rcvData);
            $this->load->view('admin/footer');
         }

         public function memberCR(){
            $name   = $_REQUEST['name'];
            $email  = $_REQUEST['email'];
            $pass   = $_REQUEST['pass'];
            $mess_name = $_REQUEST['mess_name'];
            $phn    = $_REQUEST['phn'];

            $Data = array(
                'name'      => $name,
                'email'     => $email,
                'pass'      => $pass,
                'mess_name' => $mess_name,
                'phn'       => $phn,
                'role_id'   => '3'            
            );            

            $UsersModel = $this->load->model("UsersModel");
            $rcvData = $UsersModel->userInsert($this->usersTable, $Data);           
            header("Location: ".BASE_URL."/Index/member");
         }

         public function edit($name=NULL){
            session_start();           

            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');
            $this->load->view('admin/content_title');

            $user = $_SESSION['userData'];
            $mess_name = $user['mess_name'];

            $UsersModel = $this->load->model("UsersModel");

            $rcvData['userInfo'] = $UsersModel->selectUserById($this->usersTable, $name, $mess_name);            
            $this->load->view('editInfo',$rcvData);
            $this->load->view('admin/footer');
         }         
         
         public function update($name=NULL){
            session_start();

            $rname    = $_REQUEST['name'];
            $email   = $_REQUEST['email'];            
            $pass    = $_REQUEST['pass'];            
           
            $user = $_SESSION['userData'];
            $mess_name = $user['mess_name'];

            // $Data = array(                
            //     'email'     => $email,
            //     'pass'      => $pass,
            //     'passdfdfdf'      => $pass
            // );            

            $UsersModel = $this->load->model("UsersModel");            
            $rcvData['userInfo'] = $UsersModel->updateUser($this->usersTable, $this->depositTable, $rname, $email, $pass,$name, $mess_name);
            // $rcvData['userInfo'] = $UsersModel->updateUser($this->usersTable, $Data, $id);
            header("Location: ".BASE_URL."/Index/member");
         }

         public function delete($id=NULL){
            session_start();

            $UsersModel = $this->load->model("UsersModel");
            $rcvData['userInfo'] = $UsersModel->deleteUser($this->usersTable, $id);
            header("Location: ".BASE_URL."/Index/member");
         }

         public function logOut(){
            session_start();
            session_destroy();
            header("Location: ".BASE_URL."/Index/login");
         }

         public function settings(){
            session_start();
            $this->load->view('admin/header');
            $this->load->view('admin/sidebar');
            $this->load->view('admin/content_title');


            $this->load->view('settings');
            $this->load->view('admin/footer');
         }

         public function reset($messName){            
            $UsersModel = $this->load->model("UsersModel");
            $rcvData['userInfo'] = $UsersModel->reset($this->depositTable, $messName);
            header("Location: ".BASE_URL."/Index/settings");
         }

























    }

?>