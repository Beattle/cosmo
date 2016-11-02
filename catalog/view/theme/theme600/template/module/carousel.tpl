<div class="container">
    <div class="partners">
        <h2 class="text-center">Наши партнёры</h2>
        <p class="text-center"><b>С нами работают лучшие!</b></p>

    </div>
<div id="carousel<?php echo $module; ?>" class="owl-carousel">

  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
    </div>
    <p class="text-center bpa"> <a href="<?php echo HTTP_SERVER ?>partners"><button class="btn">Подробнее</button> </a></p>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>