<?/* if ($heading_title) { */?><!--
<h3><?php /*echo $heading_title; */?></h3>
--><?/* } */?>
<div id="parallax_news" class="parallax">

    <div data-source-url="<?php echo HTTPS_SERVER ?>image/cache/catalog/parallax-3-1920x1532.jpg" class="parallax-3 " style="background-image: url(<?php echo HTTPS_SERVER?>image/cache/catalog/parallax-3-1920x1532.jpg); background-attachment: fixed; width: 1903px; margin-left: -952px; left: 50%; background-position: 50% 43.4411%;">

        <div class="container">
            <div class="row">
                <?php foreach ($articles as $article) { ?>
                    <div class="col-sm-6">
                        <article class="box">
                            <div class="box_aside">
                                <? if ($article['thumb']) { ?>
                                <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['title']; ?>" title="<?php echo $article['title']; ?>" class="img-responsive" />
                                <? } ?>
                            </div>
                            <div class="box_cnt__noflow">
                                <a href="<?php echo $article['href']; ?>">
                                    <h4><?php echo $article['title']?></h4>
                                </a>
                                <p><?php echo $article['description']; ?></p>
                                <!-- 2012-12-12-->
                                <time datetime="<?php echo $article['posted'];?>" class="fa fa-clock-o"><?php echo $article['posted'];?></time>

                            </div>
                        </article>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<script>
    jQuery(document).ready(function() {
        jQuery("#parallax_<?php echo $module; ?>>div").cherryFixedParallax({
            invert: false,
        });
    });
</script>
