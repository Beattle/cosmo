<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $text_my_account; ?></h2>
      <div class="col-sm-3">
          <button type="button" id="button-custom-field2" data-loading-text="Загрузка..." class="btn btn-default"><i class="fa fa-upload"></i> Загрузить файл</button>


          <ul class="list-unstyled">
            <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
            <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
            <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            <?php echo $video; ?>
            <li><a href="<?php echo $base;?>partprog">Партнёрская программа</a></li>
              <li><a href="<?php echo $base; ?>dostavka ">Доставка</a></li>
          </ul>
          <h2><?php echo $text_my_orders; ?></h2>
          <ul class="list-unstyled">
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <?php if ($reward) { ?>
            <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
            <?php } ?>
    <!--        <li><a href="<?php /*echo $return; */?>"><?php /*echo $text_return; */?></a></li>
            <li><a href="<?php /*echo $transaction; */?>"><?php /*echo $text_transaction; */?></a></li>
            <li><a href="<?php /*echo $recurring; */?>"><?php /*echo $text_recurring; */?></a></li>-->
          </ul>
          <h2><?php echo $text_my_newsletter; ?></h2>
          <ul class="list-unstyled">
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>
      </div>
        <div class="col-sm-9">
            <?php echo $description;?>
        </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
    <input id="input-firstname"  value="<?php echo $customer['firstname']?>" type="hidden"/>
    <input value="<?php echo $customer['lastname']?>" id="input-lastname" type="hidden"/>
    <input value="<?php echo $customer['email'] ?>" id="input-email" type="hidden"/>
    <input type="hidden" id="input-telephone" value="<?php echo $customer['telephone']?>"/>

    <script type="text/javascript"><!--
        $('button[id^=\'button-custom-field\']').on('click', function() {
            var node = this;
            var client_data = {};

            $('#form-upload').remove();

            $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

            $('#form-upload input[name=\'file\']').trigger('click');

            timer = setInterval(function() {
                if ($('#form-upload input[name=\'file\']').val() != '') {
                    clearInterval(timer);

                    $.ajax({
                        url: 'index.php?route=tool/upload',
                        type: 'post',
                        dataType: 'json',
                        data: new FormData($('#form-upload')[0]),
                        cache: false,
                        contentType: false,
                        processData: false,
                        beforeSend: function() {
                            $(node).button('loading');
                        },
                        complete: function() {
                            $(node).button('reset');
                        },
                        success: function(json) {
                            $(node).parent().find('.text-danger').remove();

                            if (json['error']) {
                                $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                            }

                            if (json['success']) {
                                // alert(json['success']);

                                client_data['name'] = $('#input-firstname').val();
                                client_data['last_name'] = $('#input-lastname').val();
                                client_data['client_file'] = json['code'];
                                client_data['email'] = $('#input-email').val();
                                client_data['phone'] = $('#input-telephone').val();

                                console.log(client_data);
                                sendMail(client_data);
                                $(node).parent().find('input').attr('value', json['code']);

                            }
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            }, 500);
        });
        //--></script>

<?php echo $footer; ?>