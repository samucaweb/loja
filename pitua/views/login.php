<?php
    $id_product = "";
    $name = "LOGIN";
    $url = "login/entrar";
    $url_cadastro = "login/cadastrar";
    if(!empty($product['id'])){
        $id_product = $product['id'];
        $url = "login/av_action/".$id_product;
        $name = "Fazer login antes da avaliação";
        $url_cadastro = "login/cadastrar/".$id_product;

    }        
?>

<div class="login">
    <div class="login_header">


    <h3><?php echo $name;?></h3>



    </div>  
    <div class="login_body">
        
        <form method="POST"  action="<?php echo BASE_URL.$url;?>" >

            <label for="l_email">E-mail</label><br>
            <input type="email" name="email" id="l_email" /><br>

            <label for="l_senha">Senha</label><br>
            <input type="password" name="password" id="v_senha" /><br>

            <input type="submit" class="bnt" value="Entrar"/>

        </form>
        <a href="">Esqueci a senha</a><br>
        <a href="<?php echo BASE_URL.$url_cadastro;?>">Cadastrar</a>
    </div>
</div>