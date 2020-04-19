
<body onload="add()">
	<div class="container_product">
		<div class="heard_product">
			<div class="mainphoto">
				<img class="foto_m" src="<?php echo BASE_URL; ?>media/products/<?php echo $product_images[0]['url']; ?>" />
			</div>
			<div class="gallery">
				<?php foreach($product_images as $img): ?>
				<div class="photo_item">
					<img class="foto_p" src="<?php echo BASE_URL; ?>media/products/<?php echo $img['url']; ?>" />
				</div>
				<?php endforeach; ?>
			</div>
		</div>
		<div class="body_product">
			<h2><?php echo $product_info['name']; ?></h2>
			<div class="poduct_img_star">
				<?php if($product_info['rating'] != '0'): ?>
					<?php for($q=0;$q<intval($product_info['rating']);$q++): ?>
					<img src="<?php echo BASE_URL; ?>assets/images/star.png" border="0" height="15" />
					<?php endfor; ?>
				<?php endif; ?><br/>
			</div>
			<hr style="width:50%;"/>
			<p><?php echo $product_info['description']; ?></p>
			<hr style="width:50%;"/></br>
			De: <span class="price_from">R$ <?php echo number_format($product_info['price_from'], 2); ?></span><br/>
			Por: <span class="original_price">R$ <?php echo number_format($product_info['price'], 2); ?></span>
			
			
			<form method="POST" class="addtocartform"  action="<?php echo BASE_URL; ?>cart/add">
			<input type="hidden" name="id_product" value="<?php echo $product_info['id']; ?>" />
				<input type="hidden" name="max_product" value="<?php echo $stockMax ; ?>" />
				<input type="hidden" id="qt_product" name="qt_product" value="1" />


				<div class="cart_select">
					<label>Selecionar um tamanho</label>
					<select name="size_product">
						<?php foreach($size as $item):?>
							<option value="<?php echo $item['size'];?>"><?php echo $item['size'];?></option>
							<br>
						<?php endforeach;?>
						</select>
				</div>

				<button id="menos">-</button>
					<input type="text" name="qt" value="1"  class="addtocart_qt" disabled />
				<button id="mas">+</button>

					
				<input class="addtocart_submit" type="submit" value="Adicionar ao carrinho" />
			</form>
			
		</div>
	</div>
	<hr/>
	<div class="heade_product_info">
		<div class="product_info">
			<h1>Especificações</h1>
			<?php foreach($product_options as $po): ?>
			<strong><?php echo $po['name']; ?></strong>: <?php echo $po['value']; ?><br/>
			<?php endforeach; ?>
		</div>
		
	</div>
	<hr/>

<div class="av_container_open">	
	<div class="heade_product_info">
		<div class="av_header">
			<h1>Avaliações</h1>
		<?php if(!empty($_SESSION['logado'])):?>
			<a href="<?php echo  BASE_URL.'product/avaliar/'.$product_info['id']; ?>" class="btn_av">adiciona avaliação</a>
		<?php else:?>
			<a href="<?php  echo BASE_URL.'login/av_login/'.$product_info['id']; ?>" class="btn_av" >adiciona avaliação</a>
		<?php endif;?>
		</div>
		<div class="av_body">
		<?php if(count($product_rates) > 0):?>
			<?php foreach($product_rates as $rate): ?>
				<div class="title">
					Nome: <strong><?php echo $rate['user_name']; ?></strong> - 
					<?php for($q=0;$q<intval($rate['points']);$q++): ?>
						<img src="<?php echo BASE_URL; ?>assets/images/star.png" border="0" height="15" />
					<?php endfor; ?>
				</div>
				<div class="commet"> Titlo: "<?php echo $rate['title']; ?>"</div>
				<div class="commet"> Comentario: "<?php echo $rate['comment']; ?>"</div>	
				<hr>
			<?php endforeach; ?>
	
			<?php else:?>
				<p>Este produto ainda não possui avaliações.</p>
				
				
			<?php endif;?>
	</div>
</div>