<div class="home">
	<div class="homeproduct">
	<?php
	$a = 0;
	?>
	<?php foreach($list as $product_item): ?>
		<div>
			<?php $this->loadView('product_item', $product_item); ?>
		</div>
		<?php
		if($a >= 2) {
			$a = 0;
			echo '</div><div class="homeproduct">';
		} else {
			$a++;
		}
		?>
	<?php endforeach; ?>
	</div>
</div>
<div class="paginationArea">
	<?php for($q=1;$q<=$numberOfPages;$q++): ?>
	<div class="paginationItem <?php echo ($currentPage==$q)?'pag_active':''; ?>"><a href="<?php echo BASE_URL; ?>?<?php
		$pag_array = $_GET;
		$pag_array['p'] = $q;
		echo http_build_query($pag_array);
	?>"><?php echo $q; ?></a></div>
	<?php endfor; ?>
</div>
