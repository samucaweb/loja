

<div class="av_product">
    <div class="av_product_header">
        <img src="<?php echo BASE_URL;?>media/products/<?php echo $product_images[0]['url']; ?>" border="0" />
    </div>
    <div class="av_product_body">
        <h3><?php echo $product['name'];?></h3>
        <p><a href="">volta para a página de produtor</a></p>
    </div>
</div>

<hr>

<div class="av_container">
    <div class="av_container_product">
        <div class="av_container_header">
                <h3>avalie este produto</h3>
        </div>
        <form method="POST" action="<?php echo BASE_URL;?>product/avaliar_action/<?php echo $product['id'];?>">
            <div class="av_points_container">
                <label>Sua avaliação para este produto*</label>
                <div class="av_points_container_body">

                    <div class="av_points_container_header">
                        <label>ruim</label>
                        <input type="radio" value="1" name="rating" />
                    </div>                  

                    <div class="av_points_container_header">
                        <label>regular</label>
                        <input type="radio" value="2" name="rating" />
                    </div>              
                    <div class="av_points_container_header">
                        <label>bom</label>
                        <input type="radio" value="3" name="rating" />
                    </div>

                    <div class="av_points_container_header">
                        <label>ótimo</label>
                        <input type="radio" value="4" name="rating" />
                    </div>

                    <div class="av_points_container_header">
                        <label>excelente</label>
                        <input type="radio" value="5" name="rating" />                     
                    </div>                
                </div>

                <div class="av_comment_container_header">

                    <div class="av_comment_title_container_bady">
                        <div class="av_tilte_container_bady">
                            <label>Título da avaliação*</label>
                            <input type="text" placeholder="Exemplo: Gostei muuito do producto!" name="title" />  
                        </div> 
                        <div class="av_comment_container_bady">
                            <label>Escreva sua opinião*</label>
                            <textarea placeholder="Escreva aqui sobre o produto" name="comment"></textarea>  
                        </div>                   
                    </div>
                </di>
            </div>
            <input type="submit" class="av_btn" value="Avaliar" />  
        </form>
    </div>
</div>

<!--<div class="modal">
    <div class="modal_container">
        <div class="modal_header">
                    ola
        </div>
        <div class="modal_body">
                ola
        </dic>
    </div>
</div>-->