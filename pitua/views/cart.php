<?php
	print_r($list);
?>

<div class="container_cart">
	<h1>Carrinho de Compras</h1><br>
	<div class="table_cart">
		<table  border="0" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>Imagem</th>
					<th>Nome</th>
					<th>Tamanho</th>
					<th>Qtd.</th>
					<th>Preço</th>
					<th></th>
				</tr>
			</thead>
			
			<?php
			$subtotal = 0;
			?>
			<tbody>

			<?php foreach($list as $item): ?>
			
			<?php
			$subtotal += (floatval($item['price']) * intval($item['qt']));
			?>
			<tr class="cart_tbody">
					<td><img src="<?php echo BASE_URL; ?>media/products/<?php echo $item['image']; ?>" width="80" /></td>
					<td><?php echo $item['name']; ?></td>
					<td><?php echo $item['size']; ?></td>
					
					
					
					<td>
						<div class="cartadd">
								
							<div class="qt"><?php echo $item['qt']; ?></div>
							<input type="hidden" name="id" value="<?php echo $item['id'];?>"/>
													
						</div>

					</td>

					<td class="price">
						<?php echo number_format($item['price'], 2, ',', '.'); ?>
					</td>
					<td><a href="<?php echo BASE_URL; ?>cart/del/<?php echo $item['id']; ?>"><img src="<?php echo BASE_URL; ?>assets/images/delete.png" width="15" /></a></td>
				</tr>
			<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<hr/>

	<div class="resultado">
		<div class="sub_total">
			Sub-total:
			<strong>
			<input type="tetx" disabled value="<?php echo number_format($subtotal, 2, ',', '.'); ?>"/></strong>
		</div>
		
		<div class="digita_cep">
			
		Qual seu CEP?<br/>
		<form method="POST">
			<input type="number" name="cep" />
			<input type="submit" value="Calcular" />
		</form>
	
	</div>
	<?php if(isset($shipping['price'])): ?>
	<div class="frete">
		<strong>Frete: R$ <?php echo $shipping['price']; ?></strong> (<?php echo $shipping['date']; ?> dia<?php echo ($shipping['date']=='1')?'':'s'; ?>)
		
	</div>
		
			<?php endif; ?>	
		
		<div class="total">
			Total:
			<strong>R$ <?php
			if(isset($shipping['price'])) {
				$frete = floatval(str_replace(',', '.', $shipping['price']));
			} else {
				$frete = 0;
			}		
			$total = $subtotal + $frete;
			echo number_format($total, 2, ',', '.');
			?></strong><br><br><br><br>
		


		<form method="POST" action="<?php echo BASE_URL; ?>cart/payment_redirect" style="float:right">

			<input type="submit" value="Finalizar Compra" class="button" />
		</form>

		
		</div>
	</div>
</div>
		</div>