<?php echo $header; ?>
<?php if ($attention) { ?>
    <div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
    <div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
    <?php echo $content_top; ?>


    <section class="content-main body" id="main">


        <div class="head"></div>

        <div class="body">

            <div class="line">
                <div class="unit size1of1">

                    <h2 class="h2"><?php echo $heading_title; ?></h2>	

                </div>
            </div>	

            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

                <div class="line mod">
                    <div class="unit size1of1">			


                        <table cellspacing="0" cellpadding="0" class="table shopBag">

                            <thead id="tableHead">
                                <tr>
                                    <th><?php echo $column_image; ?></th>
                                    <th><?php echo $column_name; ?></th>
                                    <th><?php echo $column_model; ?></th>
                                    <th class="aleft"><?php echo $column_quantity; ?></th>
                                    <th class="aright"><?php echo $column_price; ?></th>
                                    <th class="aright"><?php echo $column_total; ?></th>
                                    <th>Delete</th>
                                </tr>
                            </thead>


                            <tbody>
                                <?php foreach ($products as $product) { ?>
                                    <tr data-categoryid="437631" data-skuid="1232199" data-productid="1232016" id="0261614007002-V2013" class="orderItem">

                                        <td class="image"><?php if ($product['thumb']) { ?>
                                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                                            <?php } ?></td>
                                        <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                            <?php if (!$product['stock']) { ?>
                                                <span class="stock">***</span>
                                            <?php } ?>
                                            <div>
                                                <?php foreach ($product['option'] as $option) { ?>
                                                    - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                                                <?php } ?>
                                            </div>
                                            <?php if ($product['reward']) { ?>
                                                <small><?php echo $product['reward']; ?></small>
                                            <?php } ?>
                                        </td>
                                        <td class="model"><?php echo $product['model']; ?></td>
                                        <td class="quantity"><input style="float: left;" type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
                                            &nbsp;
                                            <input type="image" src="catalog/view/theme/default/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
                                        </td>
                                        <td class="price"><?php echo $product['price']; ?></td>
                                        <td class="price"><?php echo $product['total']; ?></td>
                                        <td><a href="<?php echo $product['remove']; ?>"><img style="width: 15px;height: 15px;" src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>					
                                    </tr>											
                                <?php } ?>
                            </tbody>

                            <tfoot>
                                <?php foreach ($totals as $total) { ?>
                                    <tr>
                                        <td colspan="5"><?php echo $total['title']; ?>:</td>
                                        <td class="amount">
                                            <span id="totalProductsCalc">
                                                <?php echo $total['text']; ?>
                                            </span>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                <?php } ?>


                            </tfoot>
                        </table>
                    </div>
                </div>

                <div  class="line mod gaView">

                    <div class="unit size1of1">
                        <div class="actions fLeft">							
                            <button onclick="location='<?php echo $continue; ?>'" class="button butWhite gaTrack gaViewEvent" type="button">
                                <span><?php echo $button_shopping; ?></span>
                            </button>

                        </div>

                        <div class="actions fRight">	
                            <button onclick="checkout()" class="button butBlack gaTrack gaViewEvent" type="button">
                                <span><?php echo $button_checkout; ?></span>
                            </button>
                        </div>								
                    </div>
                </div>

            </form>

            <div class="line">

            </div>					

        </div>
    </section>

    <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
    $('input[name=\'next\']').bind('change', function() {
        $('.cart-module > div').hide();
	
        $('#' + this.value).show();
    });
    //--></script>
<?php if ($shipping_status) { ?>
    <script type="text/javascript"><!--
        $('#button-quote').live('click', function() {
            $.ajax({
                url: 'index.php?route=checkout/cart/quote',
                type: 'post',
                data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
                dataType: 'json',		
                beforeSend: function() {
                    $('#button-quote').attr('disabled', true);
                    $('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
                },
                complete: function() {
                    $('#button-quote').attr('disabled', false);
                    $('.wait').remove();
                },		
                success: function(json) {
                    $('.success, .warning, .attention, .error').remove();			
                            						
                    if (json['error']) {
                        if (json['error']['warning']) {
                            $('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
                            					
                            $('.warning').fadeIn('slow');
                            					
                            $('html, body').animate({ scrollTop: 0 }, 'slow'); 
                        }	
                            							
                        if (json['error']['country']) {
                            $('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
                        }	
                            				
                        if (json['error']['zone']) {
                            $('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
                        }
                            				
                        if (json['error']['postcode']) {
                            $('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
                        }					
                    }
                            			
                    if (json['shipping_method']) {
                        html  = '<h2><?php echo $text_shipping_method; ?></h2>';
                        html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
                        html += '  <table class="radio">';
                            				
                        for (i in json['shipping_method']) {
                            html += '<tr>';
                            html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
                            html += '</tr>';
                            				
                            if (!json['shipping_method'][i]['error']) {
                                for (j in json['shipping_method'][i]['quote']) {
                                    html += '<tr class="highlight">';
                            							
                                    if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
                                        html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
                                    } else {
                                        html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
                                    }
                            								
                                    html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
                                    html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
                                    html += '</tr>';
                                }		
                            } else {
                                html += '<tr>';
                                html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
                                html += '</tr>';						
                            }
                        }
                            				
                        html += '  </table>';
                        html += '  <br />';
                        html += '  <input type="hidden" name="next" value="shipping" />';
                            				
    <?php if ($shipping_method) { ?>
                            html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
    <?php } else { ?>
                            html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
    <?php } ?>
                            							
                        html += '</form>';
                            				
                        $.colorbox({
                            overlayClose: true,
                            opacity: 0.5,
                            width: '600px',
                            height: '400px',
                            href: false,
                            html: html
                        });
                            				
                        $('input[name=\'shipping_method\']').bind('change', function() {
                            $('#button-shipping').attr('disabled', false);
                        });
                    }
                }
            });
        });
        //--></script> 
    <script type="text/javascript"><!--
        $('select[name=\'country_id\']').bind('change', function() {
            $.ajax({
                url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
                dataType: 'json',
                beforeSend: function() {
                    $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
                },
                complete: function() {
                    $('.wait').remove();
                },			
                success: function(json) {
                    if (json['postcode_required'] == '1') {
                        $('#postcode-required').show();
                    } else {
                        $('#postcode-required').hide();
                    }
                            			
                    html = '<option value=""><?php echo $text_select; ?></option>';
                            			
                    if (json['zone'] != '') {
                        for (i = 0; i < json['zone'].length; i++) {
                            html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                            	    			
                            if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                                html += ' selected="selected"';
                            }
                            	
                            html += '>' + json['zone'][i]['name'] + '</option>';
                        }
                    } else {
                        html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                    }
                            			
                    $('select[name=\'zone_id\']').html(html);
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        });

        $('select[name=\'country_id\']').trigger('change');
        //--></script>
<?php } ?>
<?php echo $footer; ?>
