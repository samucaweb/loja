<?php
class productController extends Controller {

	private $user;

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        header("Location: ".BASE_URL);
    }


    public function open($id) {
        
            $store = new Store();
            $products = new Products();
            $categories = new Categories();
            $op  = new Options();//pega os tamonhos das roupas(P, M G)
            
            $dados = $store->getTemplateData();
            $stockMax = $products->getMaxStock($id);
            $dados['stockMax'] = $stockMax;
            $dados['size'] = $op->getSize($id);
            
            $info = $products->getProductInfo($id);

            if(count($info) > 0) {

                $dados['product_info'] = $info;
                $dados['product_images'] = $products->getImagesByProductId($id);
                $dados['product_options'] = $products->getOptionsByProductId($id);
                $dados['product_rates'] = $products->getRates($id, 5);

                $this->loadTemplate('product', $dados);
            } else {
                header("Location: ".BASE_URL);
            }
        
    }

    public function avaliar($id){
        $store = new Store();
        $products = new Products();
        $u = new Users();
        $categories = new Categories();
            
            $dados = $store->getTemplateData();
        if(!empty($id)){
            
        $dados['product'] = $products->getInfo($id);
        $dados['product_images'] = $products->getImagesByProductId($id);
        $this->loadTemplate('avaliacao', $dados);
        }else{
            header("Location: ".BASE_URL);
            exit;
        }
    }
    public function avaliar_action($id_product){
        if(!empty($id_product) && !empty($_POST['title']) && !empty($_POST['comment'])){
            if(isset($_SESSION['logado'])){
                $title = $_POST['title'];
                $comment = $_POST['comment'];
                $id_user = $_SESSION['logado'];
                $points = $_POST['rating'];
                $r = new Rates();
                $r->add_av($title, $id_product, $id_user, $points, $comment);

                header("Location: ".BASE_URL."/product/open/".$id_product);

            }else{
                header("Location: ".BASE_URL."login/av_login/".$id_product);
            }

        }else{
            header("Location: ".BASE_URL."product/avaliar/".$id);
            exit;
        }
       
        
           


           
        
        
    }

    }