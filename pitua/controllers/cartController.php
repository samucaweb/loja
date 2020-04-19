<?php
class cartController extends Controller {

	private $user;

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        
        $store = new Store();
        $products = new Products();
        $cart = new Cart();
        $cep = '';
        $shipping = array();

        if(!empty($_POST['cep'])) {
            $cep = intval($_POST['cep']);

            $shipping = $cart->shippingCalculate($cep);
            $_SESSION['shipping'] = $shipping;
        }

        if(!empty($_SESSION['shipping'])) {
            $shipping = $_SESSION['shipping'];
        }

        if(!isset($_SESSION['cart']) || (isset($_SESSION['cart']) && count($_SESSION['cart']) == 0)) {
            header("Location: ".BASE_URL);
            exit;
        }
        

        $dados = $store->getTemplateData();
        
        $dados['shipping'] = $shipping;
        $dados['list'] = $cart->getList();
        

        $this->loadTemplate('cart', $dados);
    }

    public function del($id) {
        if(!empty($id)) {
            unset($_SESSION['cart'][$id]);
            unset($_SESSION['shipping']);
        }

        header("Location: ".BASE_URL."cart");
        exit;
    }

    public function add() {
        
        if(!empty($_POST['id_product'])) {
            $id = intval($_POST['id_product']);
            $qt = intval($_POST['qt_product']);
            $size = $_POST['size_product'];

           
            
            if(!isset($_SESSION['cart'])) {
                $_SESSION['cart'] = array();

            }



           

                if(isset($_SESSION['cart'][$id])){
                $_SESSION['cart'][$id] += $qt;

               
                
                } else {
                    $_SESSION['cart'][$id] = $qt;
                   
                }
            
        }

        header("Location: ".BASE_URL."cart");
        exit;

    }

    public function payment_redirect() {
        $store = new Store();
        $users = new Users();
        $products = new Products();
        $cart = new Cart();
        $purchases = new Purchases();
        $dados = $store->getTemplateData();
        $dados['error'] = '';

        if(!isset($_SESSION['cart']) || (isset($_SESSION['cart']) && count($_SESSION['cart']) == 0)) {
            header("Location: ".BASE_URL);
            exit;
        }
        if(!empty($_POST['name'])){
            $name = addslashes($_POST['name']);
            $cpf = addslashes($_POST['cpf']);
            $telefone = addslashes($_POST['telefone']);
            $email = addslashes($_POST['email']);
            $pass = addslashes($_POST['pass']);
            $cep = addslashes($_POST['cep']);
            $rua = addslashes($_POST['rua']);
            $numero = addslashes($_POST['numero']);
            $complemento = addslashes($_POST['complemento']);
            $bairro = addslashes($_POST['bairro']);
            $cidade = addslashes($_POST['cidade']);
            $estado = addslashes($_POST['estado']);

            if($users->emailExists($email)) {
               
                $uid = $users->validate($email, $pass);
    
                if(empty($uid)) {
                    
                    $dados['error'] = 'E-mail e/ou senha não conferem.';
                   
                }
            } else {
                $uid = $users->createUser($email, $pass);
            }

            if(!empty($uid)){
                $list = $cart->getList();
                $frente = 0;

                $total = 0;

                foreach($list as $item) {
                    $total += (floatval($item['price']) * intval($item['qt']));
                }
        
                if(!empty($_SESSION['shipping'])) {
                    $shipping = $_SESSION['shipping'];
        
                    if(isset($shipping['price'])) {
                        $frete = floatval(str_replace(',', '.', $shipping['price']));
                    } else {
                        $frete = 0;
                    }
        
                    $total += $frete;
                }
                $id_purchase = $purchases->createPurchase($uid, $total, 'mp');

                foreach($list as $item) {
                    $purchases->addItem($id_purchase, $item['id'], $item['qt'], $item['price']);
                 }
                 global $config;
                 $mp = new MP($config['mp_appid'], $config['mp_key']);

                 $data = array(
		        	'items' => array(),
		        	'shipments' => array(
		        		'mode' => 'custom',
		        		'cost' => $frete,
		        		'receiver_address' => array(
		        			'zip_code' => $cep
		        		)
		        	),
		        	'back_urls' => array(
		        		'success' => BASE_URL.'mp/obrigadoaprovado',
		        		'pending' => BASE_URL.'mp/obrigadoanalise',
		        		'failure' => BASE_URL.'mp/obrigadocancelado'
		        	),
		        	'notification_url' => BASE_URL.'mp/notificacao',
		        	'auto_return' => 'all',
		        	'external_reference' => $id_purchase
		        );

		        foreach($list as $item) {
		        	$data['items'][] = array(
		        		'title' => $item['name'],
		        		'quantity' => $item['qt'],
		        		'currency_id' => 'BRL',
		        		'unit_price' => floatval($item['price'])
		        	);
		        }

                $link = $mp->create_preference($data);
                
                if($link['status'] == '201'){
                    $link = $link['response']['init_point'];
                    header("Location: ".$link);
                    exit;
                }else{
                    $dados['error'] = 'Tente novamente';
                }
                
            }
        }

    
        $this->loadTemplate('paymet_finish', $dados); 
        
    }


    public function notificacao(){

        global $config;
        $mp = new MP($config['mp_appid'], $config['mp_key']);
        $mp->sandbox_mode(false);

        $info = $mp->get_payment_info($_GET['id']);

        if($info['status'] == '200'){
            $array = $info['response'];
            file_put_contents('mplog.txt', print_r($array, true));
        }

    }

    
}