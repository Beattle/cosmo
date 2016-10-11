<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6 2'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } elseif ($article_id == '8'){?>
    <?php $class = 'col-sm-11 col-sm-offset-1';?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> <?php echo "article_id-$article_id";?>">
        <?php echo $content_top; ?>
        <h1 class="article_id-<?php echo $article_id; ?> "><?php echo $heading_title; ?></h1>
        <?=$preview;?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = ''; ?>
        <?php } ?>
        <div class="col-sm-12">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>

          	<?php echo $description; ?>

          	<? if ($attributes) { ?>
	      		<h5><?=$text_attributes;?></h5>
	            <? foreach ($attributes as $attribute_group) { ?>
	              	<? foreach ($attribute_group['attribute'] as $attribute_item) { ?>
                   		<b><?=$attribute_item['name'];?>:</b> <?=$attribute_item['text'];?><br />
	                <? } ?>
	          	<? } ?>
            <? } ?>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = ''; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">

        </div>
      </div>

  	  <?php if ($articles) { ?>
  	  <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php foreach ($articles as $article) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $article['href']; ?>"><img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
                <h4><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h4>
                <p><?php echo $article['preview']; ?></p>

                <? if ($article['attributes']) { ?>
	                <h5><?=$text_attributes;?></h5>
	                <? foreach ($article['attributes'] as $attribute_group) { ?>
	                	<? foreach ($attribute_group['attribute'] as $attribute_item) { ?>
                       	<b><?=$attribute_item['name'];?>:</b> <?=$attribute_item['text'];?><br />
	                	<? } ?>
	                <? } ?>
                <? } ?>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>

      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<div class="fb-form-cont">
    <form data-callback="doSomething" class="fancybox" action="javascript:void(0)" id="fb-form" method="post">
        <fieldset>
            <legend>Записаться на обучение</legend>
            <div class="form-group">
                <label for="fb-field_1"> Как к вам обращаться</label>
                <input class="form-control" required name="name" type="text" id="fb-field_1"/>
            </div>
            <div class="form-group">
                <label for="fb-field_2">Телефон</label>
                <input class="form-control" required name="phone" type="text" id="fb-field_2"/>
            </div>
            <div class="form-group">
                <label for="fb-field_3">Email</label>
                <input class="form-control" required="true" name="email" type="text" id="fb-field_3"/>
            </div>
            <div class="form-group clearfix">
                <label for="fb-field_4">Комментарий</label>
                <textarea class="form-control" name="enquiry" id="fb-field_4"></textarea>
            </div>
            <div data-callback="recaptchaCallback" class="g-recaptcha  form-group" data-sitekey="6Lcq2ggUAAAAAPIf0L3l0-ApMoRxEVWrNX2CxOWV"></div>
        </fieldset>
        <button disabled class="btn sendBtn"> Отправить</button>
    </form>
</div>

<script type="text/javascript"><!--
$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>