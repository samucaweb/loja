<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>PITUÃ</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/style.css" type="text/css" />
	<body>
		<nav class="navbar">
			<img class="menu_resposivo" src="<?php  echo BASE_URL?>assets/images/menu.png" border="0"/>
				<ul class="nav-left">
					<li><a href="<?php echo BASE_URL;?>">Home</a></li>
					<li><a href="<?php echo BASE_URL;?>home/quemsomos">Quem somos</a></li>
					<li><a href="<?php echo BASE_URL;?>contact">Contato</a></li>
				</ul>
				<ul class="nav-right">
				<div class="redesocial">
					<li><a href=""><img src="<?php echo BASE_URL?>assets/images/inst.png" border="0"/></a></li>
					<li><a href=""><img src="<?php  echo BASE_URL?>assets/images/face.png" border="0"/></a></li>
				</div>
				<?php if(!empty($_SESSION['logado'])):?>

					<li><a href="<?php echo BASE_URL; ?>login/sair">sair</a></li>
				<?php else:?>
					<li><a href="<?php echo BASE_URL; ?>login">LOGIN</a></li>
				<?php endif?>
				</ul>
			
		</nav>
		<header>
			<div class="container">
				<a href="<?php echo BASE_URL; ?>"><img class="photo_logo" width="180" src="<?php echo BASE_URL; ?>assets/images/logo3.png" /></a>
				<div class="ariabusca">
					<form action="<?php echo BASE_URL; ?>busca" method="GET">
						<input type="hidden" name="category"/>
						<input type="text" value="<?php echo (!empty($viewData['searchTerm']))?$viewData['searchTerm']:''; ?>" required placeholder="Oque esta procurando?" class="busca" name="s"/><input class="btn" type="submit" value=""/>
					</form>
				</div>
				<a href="<?php echo BASE_URL;?>cart">
					<div class="cartaria">
						<div class="carticon">
							<div class="cartqt"><?php echo $viewData['cart_qt']; ?></div>
						</div>
						<div class="carttotal">
								carrinho:<br>

								<span>R$ <?php echo number_format($viewData['cart_subtotal'], 2, ',', '.'); ?></span>
						</div>
					</div>
				</a>
			</div>
		</header>
		<hr>

		<div class="categoryarea">
			
		</div>
		<section>
					<?php if(isset($viewData['sidebar'])): ?>
				  		<div class="container_home">
				  			<?php $this->loadView('sidebar', array('viewData'=>$viewData)); ?>
				  		
						  <div><?php $this->loadViewInTemplate($viewName, $viewData); ?></div>
						</div>
					<?php else: ?>
						<div class="container_home"><?php $this->loadViewInTemplate($viewName, $viewData); ?></div>
					<?php endif; ?>
				
	    </section>
				
			<div class="subarea">
			
					<div class="emailarea">
						<form method="POST">
							<input class="subemail" name="email" placeholder="Inscreva-se para receber novas promoções">
							<input type="submit" value="Increvar"/>
						</form>
					</div>
	    		</div>
			
			<hr>
<footer>
	<div class="container">

	<div class="linkgroups">
		<div class="produto_destaque">
			<div class="widget">
				<h3>Produtos em Destaque</h3>
				<div class="widget_body">

				<?php $this->loadView('widget_item', array('list'=>$viewData['widget_featured2'])); ?>

				</div>
		</div>

		</div>
		<div class="produto_sale">
			<div class="widget">
				<h3>Produtos Promocionais</h3>
				<div class="widget_body">

				<?php $this->loadView('widget_item', array('list'=>$viewData['widget_sale'])); ?>

				</div>
			</div>
		</div>

		<div class="melhores_produtos">
			<div class="widget">
				<h3>Melhores Produtos</h3>
				<div class="widget_body">

				<?php $this->loadView('widget_item', array('list'=>$viewData['widget_toprated'])); ?>
				
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="copyright">

		<div class="footer-copy">
			<div class="copy">© <span>pituã</span> - Todos os direitos reservados.</div>
			<div class="footer_termos">
			<a href="">Termos de uso</a>
			<a href="">Termos de uso</a>
			<a href="">Termos de uso</a>
		</div>
			<div class="cartaoaceito">
				<div class="payments">
					<img src="<?php echo BASE_URL; ?>assets/images/visa.png" />
					<img src="<?php echo BASE_URL; ?>assets/images/visa.png" />
					<img src="<?php echo BASE_URL; ?>assets/images/visa.png" />
					<img src="<?php echo BASE_URL; ?>assets/images/visa.png" />
				</div>
			</div>
		</div>
		
	</div>
</div>
</footer>
		<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/script.js"></script>
	</body>
</html>