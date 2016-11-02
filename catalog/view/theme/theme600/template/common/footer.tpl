<footer>
	<?php if ($footer_top) { ?>
	<div class="footer">
		<?php if ($maintenance == 0){ ?>
		<?php echo $footer_top; ?>
		<?php } ?>
	</div>
	<?php } ?>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-lg-2">
				<?php if ($informations) { ?>
				<div class="footer_box">
					<h5><?php echo $text_information; ?></h5>
					<ul class="list-unstyled">
                        <li><a href="<?php echo HTTP_SERVER . 'company' ?>">О нас </a></li>
						<?php foreach ($informations as $information) { ?>
						<li><a href="<?php echo HTTP_SERVER.'dostavka' ?>"><?php echo $information['title']; ?></a></li>
						<?php } ?>
                        <li>
                            <a href="<?php echo HTTP_SERVER.'/brends'?>">Бренды</a>
                        </li>
                        <li>
                            <a href="<?php echo HTTP_SERVER.'/ami-club';?>">Ами-клуб</a>
                        </li>
					</ul>
				</div>
				<?php } ?>
			</div>
			<div class="col-sm-3 col-lg-2">
				<div class="footer_box">
					<h5><?php echo $text_service; ?></h5>
					<ul class="list-unstyled">
						<li><a href="<?php echo HTTP_SERVER.'contacts'; ?>"><?php echo $text_contact; ?></a></li>
<!--						<li><a href="<?php /*echo $return; */?>"><?php /*echo $text_return; */?></a></li>
						<li><a href="<?php /*echo $sitemap; */?>"><?php /*echo $text_sitemap; */?></a></li>-->
					</ul>
				</div>
			</div>
<!--			<div class="col-sm-3 col-lg-2">
				<div class="footer_box">
					<h5><?php /*echo $text_extra; */?></h5>
					<ul class="list-unstyled">
						<li><a href="<?php /*echo $manufacturer; */?>"><?php /*echo $text_manufacturer; */?></a></li>
						<li><a href="<?php /*echo $voucher; */?>"><?php /*echo $text_voucher; */?></a></li>
						<li><a href="<?php /*echo $affiliate; */?>"><?php /*echo $text_affiliate; */?></a></li>
						<li><a href="<?php /*echo $special; */?>"><?php /*echo $text_special; */?></a></li>
					</ul>
				</div>
			</div>-->
			<div class="col-sm-3 col-lg-2">
				<div class="footer_box">
					<h5><?php echo $text_account; ?></h5>
					<ul class="list-unstyled">
						<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
						<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
						<!--<li><a href="<?php /*echo $wishlist; */?>"><?php /*echo $text_wishlist; */?></a>--></li>
						<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-5 col-md-3 col-lg-offset-1 mod">
				<div class="footer_box">
					<h5><?php echo $text_contact; ?></h5>
					<address>
						<?php if($address) { ?>
							<?php echo $address; ?>
						<?php } ?>
						<?php if($telephone) { ?>
							<dl>
								<dt>
									<?php echo $text_telephone; ?>
								</dt>
								<dd class="fa fa-phone">
									<a href="callto:<?php echo $telephone; ?>">
										<?php echo $telephone; ?>
									</a>
								</dd>
							</dl>
						<?php } ?>
						<?php if($email) { ?>
							<dl>
								<dt>
									<?php echo $text_email; ?>
								</dt>
								<dd>
									<a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a>
								</dd>
							</dl>
						<?php } ?>
					</address>
				</div>
			</div>
		</div>

	</div>
	<div class="copyright">
		<div class="container">
			<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
		</div> 
	</div>
</footer>
<script src="catalog/view/theme/<?php echo $theme_path; ?>/js/livesearch.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $theme_path; ?>/js/script.js" type="text/javascript"></script>
</div>

</body></html>