
    <h1>Preencha os dados para finalizar a compra </h1>
<div class="dados_pessoais">
    <div class="dados_comprador">
        <?php if(!empty($error)):?>
                <div class="worn">
                        <?php echo $error;?>
                </div>
            <?php endif?>
        
        <h3>Dados Pessoais</h3>
    <form method="POST">
                <strong>Nome:</strong><br/>
                <input type="text" name="name"  value="samuel guimarães da silva" /><br/><br/>

                <strong>CPF:</strong><br/>
                <input type="text" name="cpf" id="cpf" value="" /><br/><br/>

                <strong>Telefone:</strong><br/>
                <input type="text" name="telefone" value="27999882110" /><br/><br/>

                <strong>E-mail:</strong><br/>
                <input type="email" name="email" value="samuca@gmail.com" /><br/><br/>

                <strong>Senha:</strong><br/>
                <input type="password" name="pass" /><br/><br/>
            </div>
            <div class="dados_endereco">
                <h3>Informações de Endereço</h3>

                <strong>CEP:</strong><br/>
                <input type="text" name="cep" onblur="pesquisacep(this.value);" id="cep"  value="" /><br/><br/>

                <strong>Rua:</strong><br/>
                <input type="text" name="rua" id="rua" value="" /><br/><br/>

                <strong>Número:</strong><br/>
                <input type="text" name="numero"  value="141" /><br/><br/>

                <strong>Complemento:</strong><br/>
                <textarea name="complemento" ></textarea><br/><br/>

                <strong>Bairro:</strong><br/>
                <input type="text" name="bairro" id="bairro" value="" /><br/><br/>

                <strong>Cidade:</strong><br/>
                <input type="text" name="cidade" id="cidade" value="" /><br/><br/>

                <strong>Estado:</strong><br/>
                <input type="text" name="estado" id="uf" value="" /><br/><br/>
            </div>
</div>      
        <input type="submit" value="Efetuar Compra" class="button efetuarCompra">
</form>

</script>