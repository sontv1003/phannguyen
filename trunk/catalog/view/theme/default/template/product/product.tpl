<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
    <?php echo $content_top; ?>
    <div id="pageLoading"></div>
    <form id="main-product">
        <section id="main" class="content-main">
            <section id="product" class="product-card psection_1 ptype_0 pcatentry_1344505 pversion_v1">
               <div class="fixed" id="products-nav">
<!--                        <a data-ga-props="{action:'Navegacion', opt_label:'Volver'}" class="back gaTrack gaViewEvent" href="#">
                            BACK
                        </a>
                        <input type="hidden" value="#" name="patternProductUrl" id="patternProductUrl">
                        <a href="javascript:void(0)" data-ga-props="{action:'Navegacion', opt_label:'Anterior'}" class="prev gaTrack gaViewEvent">
                            <i class="icon icon-arrow-left-disabled"></i>
                        </a>
                        <a href="#" data-ga-props="{action:'Navegacion', opt_label:'Siguiente'}" class="next gaTrack gaViewEvent">
                            <i class="icon icon-arrow-right"></i>
                        </a>-->

                        <div id="associatedLnks">
                            <div class="clear"></div>
                            <div class="associatedTitle">LOOK+</div>
                            <?php if ($products) { ?>
                                <ul class="small-images">
                                    <?php foreach ($products as $product) { ?>
                                        <li data-prodindex="0">
                                            <a class="more-product" rel="<?php echo $product['product_id'] ?>" href="<?php echo $product['href']; ?>">
                                                <img src="<?php echo $product['thumb']; ?>"class="draggableAssociated sbdraggable" alt="<?php echo $product['name']; ?>">
                                            </a>
                                        </li>
                                    <?php } ?>
                                </ul>
                            <?php } ?>
                        </div>
                    </div>	
                <div class="left">                   
                    <div class="bigImageContainer" style="width: 525px;">
                        <?php if ($popup || $images) { ?>
                            <div class="image-wrap mainImage imageZoom">
                                <?php if ($popup) { ?>
                                            <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="MagicZoomPlus"><img src="<?php echo $thumb; ?>"/></a>
                                <?php } ?>

                                <?php if ($images) { ?>
                                    <div class="image-additional">
                                        <?php foreach ($images as $image) { ?>
                                            <a id="Zoomer" href="<?php echo $image['popup']; ?>" class="MagicZoomPlus" rel="background-color: #FFFFFF; background-opacity: 100; hint: false; font:0px;" title="<?php echo $heading_title; ?>">
                                                <img src="<?php echo $image['thumb']; ?>"/>
                                            </a>
                                        <?php } ?>
                                    </div>
                                <?php } ?>
                            </div>
                        <?php } ?>
                    </div>
                </div>


                <div id="productRightMenu" class="right product-info">

                    <header>
                        <h1>
                            <?php echo $heading_title; ?>	
                        </h1>
                    </header>						

                    <?php if ($manufacturer) { ?>
                        <p class="reference">
                            <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
                        </p>	
                    <?php } ?>
                    <p class="reference">
                        <span><?php echo $text_model; ?></span> <?php echo $model; ?>
                    </p>	

                    <p class="reference">
                        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?>
                    </p>	
                   <p class="share"> AddThis Button BEGIN 
                        <div class="addthis_default_style">
                            <a class="addthis_button_compact"><?php echo $text_share; ?></a>
                            <a class="addthis_button_email"></a><a class="addthis_button_print"></a>
                            <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a>
                        </div>
                        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js"></script> 
                    </p>
                    <br />
                    <br />
                    <div class="description"><?php echo $description; ?></div>


                    <?php if ($price) { ?>
                        <div class="price"><?php echo $text_price; ?>
                            <?php if (!$special) { ?>
                                <?php echo $price; ?>
                            <?php } else { ?>
                                <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
                            <?php } ?>
                            <br />
                            <?php if ($tax) { ?>
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
                            <?php } ?>

                            <?php if ($discounts) { ?>
                                <br />
                                <div class="discount">
                                    <?php foreach ($discounts as $discount) { ?>
                                        <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
                                    <?php } ?>
                                </div>
                            <?php } ?>
                        </div>
                    <?php } ?>

                    <?php if ($options) { ?>
                        <div class="options">
                            <?php foreach ($options as $option) { ?>
                                <?php if ($option['type'] == 'select') { ?>
                                    <div class="size-btn" style="visibility: visible; opacity: 1;">
                                        <span class="selected-size"><span class="required">*</span> <?php echo $option['name']; ?> </span>
                                        <div class="size-select" style="display: none;">
                                            <table>
                                                <tbody>
                                                    <?php foreach ($option['option_value'] as $option_value) { ?>
                                                        <tr class="product-size gaTrack gaViewEvent">
                                                            <td class="size-name">
                                                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                                                <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>">
                                                                    <?php echo $option_value['name']; ?>
                                                                </label>
                                                            </td>																								
                                                            <td class="suscribe">&nbsp;</td>
                                                        </tr>
                                                    <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'radio') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <div class="size-btn" style="visibility: visible; opacity: 1;">
                                            <span class="selected-size"><span class="required">*</span> <?php echo $option['name']; ?> </span>
                                            <div class="size-select" style="display: none;">
                                                <table>
                                                    <tbody>
                                                        <?php foreach ($option['option_value'] as $option_value) { ?>
                                                            <tr class="product-size gaTrack gaViewEvent">
                                                                <td class="size-name">
                                                                    <input rel="<?php echo $option_value['name']; ?>" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                                                    <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>">
                                                                        <?php echo $option_value['name']; ?>
                                                                    </label>
                                                                </td>																								
                                                                <td class="suscribe">&nbsp;</td>
                                                            </tr>
                                                        <?php } ?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'checkbox') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <?php foreach ($option['option_value'] as $option_value) { ?>
                                            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php } ?>
                                            </label>
                                            <br />
                                        <?php } ?>
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'image') { ?>
                                    <div class="colors" >
                                        <?php foreach ($option['option_value'] as $option_value) { ?>
                                            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>" >
                                                <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name']; ?>" />
                                                <span><?php echo $option_value['name']; ?></span>
                                            </label>
                                            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                        <?php } ?>
                                    </div>

                                <?php } ?>
                                <?php if ($option['type'] == 'text') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'textarea') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'file') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
                                        <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'date') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'datetime') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'time') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
                                    </div>
                                    <br />
                                <?php } ?>
                            <?php } ?>
                        </div>
                    <?php } ?>
                    <div class="cart">
                        <div><?php echo $text_qty; ?>
                            <input type="text" name="quantity" style="padding: 5px;" size="2" value="<?php echo $minimum; ?>" />
                            <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
                            &nbsp;
                            <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
                        </div>
                        <?php if ($minimum > 1) { ?>
                            <div class="minimum"><?php echo $text_minimum; ?></div>
                        <?php } ?>
                    </div>

                </div>
            </section>
        </section>
    </form>
    <div id="modal-opion" class="modal hide fade">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>

        <div class="modal-body">

        </div>
    </div>
    <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
    $(document).ready(function() {
        $('.colorbox').colorbox({
            overlayClose: true,
            opacity: 0.5,
            rel: "colorbox"
        });
        
        $('.colors input').live('click',function(){
            var current_id = $(this).attr('id');
            
            $('.colors label').removeClass('selected');
            $('.colors label[for="'+current_id+'"]').addClass('selected');
        })
        
        $('.selected-size').live('click',function(){
            var e = $(this);
            console.debug(e.text())
            if($(e).parent().children('.size-select').is(":visible"))
                $(e).parent().children('.size-select').hide();
            else
                $(e).parent().children('.size-select').show();
        })
        
        $('.size-name input').live('click',function(){
            
            var e = $(this).parents('.size-select');
            e.parent().children('.selected-size').text($(this).attr('rel'));
            
            e.hide();
        })
    });
    //--></script> 
<script type="text/javascript"><!--
    
    $(document).ready(function(){
        
        $('#filter-btn').live('click',function(){
            $('#modal-opion').modal();
        })
        
       
        
        $('.more-product').live('click',function(){
            var product_id = jQuery(this).attr('rel');
            $.ajax({
                url: '<?php echo html_entity_decode($ajax_product) ?>&product_id='+product_id,
                beforeSend: function(){
                    $('#pageLoading').show();
                    $('#pageLoading').css('right',50);
                    $('#pageLoading').css('top',50);
                    $("#lh_page").val(1);
                },
                success: function(data) {
                    $('#pageLoading').hide();
                    $('#modal-opion').modal();
                    $('#modal-opion .modal-body').html(data);
                }
            });
            return false;
        })
    })
    
    $('#button-cart-ajax').live('click',function(){
        
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('form#ajax-product').serialize(),
            dataType: 'json',
            success: function(json) {
                $('.success, .warning, .attention, information, .error').remove();
			
                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            $('#optionajax-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                        }
                    }
                } 
			
                if (json['success']) {
                    $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                    $('.success').fadeIn('slow');
					
                    $('#cart-total').html(json['total']);
				
                    $('html, body').animate({ scrollTop: 0 }, 'slow'); 
                    
                    $('#modal-opion').modal('hide');
                }	
            }
        });
    })
    
    $('#button-cart').bind('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('form#main-product').serialize(),
            dataType: 'json',
            success: function(json) {
                $('.success, .warning, .attention, information, .error').remove();
			
                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                        }
                    }
                } 
			
                if (json['success']) {
                    $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                    $('.success').fadeIn('slow');
					
                    $('#cart-total').html(json['total']);
				
                    $('html, body').animate({ scrollTop: 0 }, 'slow'); 
                }	
            }
        });
    });
    //--></script>
<?php if ($options) { ?>
    <script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
    <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'file') { ?>
            <script type="text/javascript"><!--
                new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
                    action: 'index.php?route=product/product/upload',
                    name: 'file',
                    autoSubmit: true,
                    responseType: 'json',
                    onSubmit: function(file, extension) {
                        $('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
                        $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
                    },
                    onComplete: function(file, json) {
                        $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        		
                        $('.error').remove();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        		
                        if (json['success']) {
                            alert(json['success']);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        			
                            $('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        		
                        if (json['error']) {
                            $('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        		
                        $('.loading').remove();	
                    }
                });
                //--></script>
        <?php } ?>
    <?php } ?>
<?php } ?>
<script type="text/javascript"><!--
    $('#review .pagination a').live('click', function() {
        $('#review').fadeOut('slow');
		
        $('#review').load(this.href);
	
        $('#review').fadeIn('slow');
	
        return false;
    });			

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').bind('click', function() {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
            beforeSend: function() {
                $('.success, .warning').remove();
                $('#button-review').attr('disabled', true);
                $('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
            },
            complete: function() {
                $('#button-review').attr('disabled', false);
                $('.attention').remove();
            },
            success: function(data) {
                if (data['error']) {
                    $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
                }
			
                if (data['success']) {
                    $('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').attr('checked', '');
                    $('input[name=\'captcha\']').val('');
                }
            }
        });
    });
    //--></script> 
<script type="text/javascript"><!--
    $('#tabs a').tabs();
    //--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
    $(document).ready(function() {
        if ($.browser.msie && $.browser.version == 6) {
            $('.date, .datetime, .time').bgIframe();
        }
        if($.browser.chrome = (typeof window.chrome === "object")) {
            $('.product-card .left').css('margin-left', '0px');
        }
        
        $('.date').datepicker({dateFormat: 'yy-mm-dd'});
        $('.datetime').datetimepicker({
            dateFormat: 'yy-mm-dd',
            timeFormat: 'h:m'
        });
        $('.time').timepicker({timeFormat: 'h:m'});
    
    $('.MagicZoomPlus').live('click', function() {        
        $('.MagicThumb-buttons').next().remove();
        alert('ok');
    });
    
    });
    
//--></script> 
<?php echo $footer; ?>
<style>
    #page-container{ width: 100%; }
</style>