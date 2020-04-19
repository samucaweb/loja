<body onload="sideBar()">
<aside>
	<div class="filter_sidebar_container">
		<div class="filter_sidebar_header">Filtrar por:
						<img class="upArow" src="<?php echo BASE_URL?>assets/images/up.png" border="0"/></div>
						
			<div class="filter_sidebar_body">
			<div class="aside_filter">
		<div class="filterarea">

			<form method="GET">

				<input type="hidden" name="s" value="<?php echo $viewData['searchTerm']; ?>" />
				<input type="hidden" name="category" value="<?php echo $viewData['category']; ?>" />
			
			<div class="filterbox">
				<div class="filtertitle">Preço</div>
				<div class="filtercontent">
					<input type="checkbox" id="slider0" name="filter[slider0]" <?php echo (isset($viewData['filters_selected']['slider0']))?'checked="checked"':''; ?>  value="<?php echo $viewData['getMaxPrice']; ?>" />
					<label for="slider0">
							Maior preço
					</label><br>
					<input type="checkbox" id="slider1" name="filter[slider1]"  <?php echo (isset($viewData['filters_selected']['slider1']))?'checked="checked"':''; ?>  value="<?php echo $viewData['getMaxPrice']; ?>" />
					<label for="slider1">
							Menor preço
					</label>
				</div>
			</div>

				<div class="filterbox">
					<div class="filtertitle">Estrelas</div>
					<div class="filtercontent">
						<div class="filteritem">
							<input type="checkbox" name="filter[star][0]" <?php echo (isset($viewData['filters_selected']['star']) && in_array('0', $viewData['filters_selected']['star']))?'checked="checked"':''; ?> value="0" id="filter_star0" /> 
							<label for="filter_star0">
							(Sem estrela)
						</label>
						<span style="float:right">(<?php echo $viewData['filters']['stars']['0']; ?>)</span>
						</div>
						<div class="filteritem">
							<input type="checkbox" name="filter[star][]" <?php echo (isset($viewData['filters_selected']['star']) && in_array('1', $viewData['filters_selected']['star']))?'checked="checked"':''; ?> value="1" id="filter_star1" /> 
							<label for="filter_star1">
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
						</label>
						<span style="float:right">(<?php echo $viewData['filters']['stars']['1']; ?>)</span>
						</div>
						<div class="filteritem">
							<input type="checkbox" name="filter[star][]" <?php echo (isset($viewData['filters_selected']['star']) && in_array('2', $viewData['filters_selected']['star']))?'checked="checked"':''; ?> value="2" id="filter_star2" /> 
							<label for="filter_star2">
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
						</label>
						<span style="float:right">(<?php echo $viewData['filters']['stars']['2']; ?>)</span>
						</div>
						<div class="filteritem">
							<input type="checkbox" name="filter[star][]" <?php echo (isset($viewData['filters_selected']['star']) && in_array('3', $viewData['filters_selected']['star']))?'checked="checked"':''; ?> value="3" id="filter_star3" /> 
							<label for="filter_star3">
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
						</label>
						<span style="float:right">(<?php echo $viewData['filters']['stars']['3']; ?>)</span>
						</div>
						<div class="filteritem">
							<input type="checkbox" name="filter[star][]" <?php echo (isset($viewData['filters_selected']['star']) && in_array('4', $viewData['filters_selected']['star']))?'checked="checked"':''; ?> value="4" id="filter_star4" /> 
							<label for="filter_star4">
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
						</label>
						<span style="float:right">(<?php echo $viewData['filters']['stars']['4']; ?>)</span>
						</div>
						<div class="filteritem">
							<input type="checkbox" name="filter[star][]" <?php echo (isset($viewData['filters_selected']['star']) && in_array('5', $viewData['filters_selected']['star']))?'checked="checked"':''; ?> value="5" id="filter_star5" /> 
							<label for="filter_star5">
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
							<img src="<?php echo BASE_URL; ?>assets/images/star.png" height="13" border="0" />
						</label>
						<span style="float:right">(<?php echo $viewData['filters']['stars']['5']; ?>)</span>
						</div>
					</div>
				</div>

				<div class="filterbox">
					<div class="filtertitle">Promoção</div>
					<div class="filtercontent">
						<div class="filteritem">
							<input type="checkbox" name="filter[sale]" <?php echo (isset($viewData['filters_selected']['sale']) && $viewData['filters_selected']['sale'] == '1')?'checked="checked"':''; ?> value="1" id="filter_sale" />
							<label for="filter_sale">Em promoção</label>
							<span style="float:right">(<?php echo $viewData['filters']['sale']; ?>)</span>
						</div>
					</div>
				</div>

				<div class="filterbox">
					<div class="filtertitle">Opições</div>
					<div class="filtercontent">
						<?php foreach($viewData['filters']['options'] as $option): ?>
							<strong><?php echo $option['name']; ?></strong><br/>
							<?php foreach($option['options'] as $op): ?>
								<div class="filteritem">
								<input type="checkbox" name="filter[options][]" <?php echo (isset($viewData['filters_selected']['options']) && in_array($op['value'], $viewData['filters_selected']['options']))?'checked="checked"':''; ?> value="<?php echo $op['value']; ?>" id="filter_options<?php echo $op['id']; ?>" /> 
								<label for="filter_options<?php echo $op['id']; ?>"><?php echo $op['value']; ?></label><span style="float:right">(<?php echo $op['count']; ?>)</span>
							</div>
							<?php endforeach; ?>
							<br/>
					<?php endforeach; ?>
					</div>
				</div>

			</form>

		</div>
	</div>
			</div>	
		</div>
	</div>		
</aside>

	