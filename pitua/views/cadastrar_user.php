<?php
    $id_product = "";
    $url = "login/cadastrar_action";
    $url_cadastro = "login/cadastrar_action";
    if(!empty($product['id'])){

        $id_product = $product['id'];
       
        $url = "login/cadastrar_action/".$id_product;

    }        
?>


<div class="login">
    <div class="login_header">
    <h3>Tela de Cadastro</h3>
    </div>  
    <div class="login_body">
        <form method="POST" action="<?php echo BASE_URL.$url;?>">
            <label for="l_name">Nome</label><br>
            <input type="text" name="name" id="v_name" /><br>

            <label for="l_email">E-mail</label><br>
            <input type="email" name="email" id="l_email" /><br>

            <label for="l_senha">Senha</label><br>
            <input type="password" name="password" id="v_senha" /><br>

            <input type="submit" class="bnt" value="Cadastrar"/>

        </form>
</div>