<?php if (count($currencies) > 1) { ?>
<div class="box-currency">
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
		<div class="btn-group">
			<span class="dropdown-toggle" data-toggle="dropdown">
				<span><?php echo $text_currency; ?> : </span>
				<?php foreach ($currencies as $currency) { ?>
				<?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
				<?php echo $currency['code']; ?>
				<?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
				<?php echo $currency['code']; ?>
				<?php } ?>
				<?php } ?>
			</span>
			<ul class="dropdown-menu  pull-left">
				<?php foreach ($currencies as $currency) { ?>
				<?php if ($currency['symbol_left']) { ?>
				<li><button class="currency-select" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?> <?php echo $currency['title']; ?></button></li>
				<?php } else { ?>
				<li><button class="currency-select" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?> <?php echo $currency['title']; ?></button></li>
				<?php } ?>
				<?php } ?>
			</ul>
		</div>
		<input type="hidden" name="code" value="" />
		<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
	</form>
</div>
<?php } ?>
