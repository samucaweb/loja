<?php
class loginController extends Controller {

	private $user;

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $store = new Store();
        $products = new Products();
        $categories = new Categories();
        $f = new Filters();

        $dados = $store->getTemplateData();
        
        

        $this->loadTemplate('login', $dados);
    }
    public function entrar(){
        
        if(!empty($_POST['email']) && !empty($_POST['password'])) {
            
			$email = $_POST['email'];
			$password = $_POST['password'];

			$u = new Users();
			if($u->getlogin($email, $password)) {
                
            
                header("Location: ".BASE_URL);
                exit;

			} else {
				$_SESSION['errorMsg'] = 'Usuário e/ou senha errados!';
			}
		} else {
            $_SESSION['errorMsg'] = 'Preencha os campos abaixo.';
            header("Location: ".BASE_URL."login");
		    exit;
		}
		
		
    }
    public function cadastrar($id_product = ""){
        $store = new Store();
        $products = new Products();
        $categories = new Categories();
        $f = new Filters();

        $dados = $store->getTemplateData();
        if(!empty($id_product)){
            $dados['av_login'] = $id_product;
            $dados['product'] = $products->getInfo($id_product);
            
        }
        

        $this->loadTemplate('cadastrar_user', $dados);
    }
    public function cadastrar_action($id_product = ""){
        if(!empty($_POST['email']) && !empty($_POST['password'])) {
            $name = $_POST['name'];
			$email = $_POST['email'];
			$password = $_POST['password'];

			$u = new Users();
			if($u->emailExists($email)){
                $_SESSION['errorMsg'] = 'Este email já esta cadastrado!';
                header("Location: ".BASE_URL."login/cadastrar/".$id_product);
                exit;
               
            }else{
                $u->createUserLogin($name, $email, $password);
                header("Location: ".BASE_URL."product/avaliar/".$id_product);
                exit;
            }
     }

    }

    public function av_login($id){
        $store = new Store();
        $products = new Products();
        $categories = new Categories();
        $f = new Filters();
        
        $dados = $store->getTemplateData();
        if(!empty($id)){
            $dados['av_login'] = $id;
            $dados['product'] = $products->getInfo($id);
            $this->loadTemplate('login', $dados);
        }
    }

    public function av_action($id_product){
        
        if(!empty($_POST['email']) && !empty($_POST['password'])) {
           
			$email = $_POST['email'];
			$password = $_POST['password'];

			$u = new Users();
			if($u->getlogin($email, $password)) {
            
               
                   
            header("Location: ".BASE_URL."product/avaliar/".$id_product);
            exit;

			} else {
				$_SESSION['errorMsg'] = 'Usuário e/ou senha errados!';
			}
		} else {
            $_SESSION['errorMsg'] = 'Preencha os campos abaixo.';
            header("Location: ".BASE_URL."login/".$id_product);
		    exit;
		}

    }


public function sair(){
    unset($_SESSION['logado']);
    header("Location: ".BASE_URL);
}


}