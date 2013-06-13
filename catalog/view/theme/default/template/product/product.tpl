<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
    <?php echo $content_top; ?>
    
    <section id="main" class="content-main">
        <section id="product" class="product-card psection_1 ptype_0 pcatentry_1344505 pversion_v1">
            <div class="left">


                <nav class="fixed" id="products-nav" style="left: 300px;">

                    <a data-ga-props="{action:'Navegacion', opt_label:'Volver'}" class="back gaTrack gaViewEvent" href="#">
                        BACK
                    </a>


                    <input type="hidden" value="http://www.zara.com/us/en/-c358002" name="patternProductUrl" id="patternProductUrl">
                    <a href="javascript:void(0)" data-ga-props="{action:'Navegacion', opt_label:'Anterior'}" class="prev gaTrack gaViewEvent">
                        <i class="icon icon-arrow-left-disabled"></i>
                    </a>
                    <a href="http://www.zara.com/us/en/woman/blazers/fantasy-fabric-jacket-c358002p1296440.html" data-ga-props="{action:'Navegacion', opt_label:'Siguiente'}" class="next gaTrack gaViewEvent">
                        <i class="icon icon-arrow-right"></i>
                    </a>

                    <div class="fixed" id="associatedLnks" style="left: 300px;">
                        <div class="associatedTitle">LOOK+
                        </div>
                        <ul class="small-images">


                            <li data-prodindex="0">
                                <a class="_linkPopUpProduct" href="http://www.zara.com/webapp/wcs/stores/servlet/CatentryPopUpView?catalogId=24056&amp;categoryId=358002&amp;langId=-1&amp;productId=1294312&amp;storeId=11719">
                                    <img data-url="http://www.zara.com/us/en/FADED-VEST-TOP--c358002p1294312.html" sb-id="00264223" data-category="358002" data-id="1294312" data-ref="00264223-I2013" class="draggableAssociated sbdraggable" alt="FADED VEST TOP                                                                                                                  " src="//static.zara.net/photos//2013/I/0/1/p/0264/223/250/2/0264223250_6_1_5.jpg?timestamp=1370540298165">
                                </a>
                            </li>


                            <li data-prodindex="1">
                                <a class="_linkPopUpProduct" href="http://www.zara.com/webapp/wcs/stores/servlet/CatentryPopUpView?catalogId=24056&amp;categoryId=358002&amp;langId=-1&amp;productId=1191003&amp;storeId=11719">
                                    <img data-url="http://www.zara.com/us/en/LOOSE-FIT-TROUSERS--c358002p1191003.html" sb-id="06164082" data-category="358002" data-id="1191003" data-ref="06164082-V2013" class="draggableAssociated sbdraggable" alt="LOOSE FIT TROUSERS                                                                                                              " src="//static.zara.net/photos//2013/V/0/1/p/6164/082/250/2/6164082250_6_1_5.jpg?timestamp=1367597583066">
                                </a>
                            </li>


                            <li data-prodindex="2">
                                <a class="_linkPopUpProduct" href="http://www.zara.com/webapp/wcs/stores/servlet/CatentryPopUpView?catalogId=24056&amp;categoryId=358002&amp;langId=-1&amp;productId=1293942&amp;storeId=11719">
                                    <img data-url="http://www.zara.com/us/en/ANKLE-STRAP-SANDAL--c358002p1293942.html" sb-id="15406201" data-category="358002" data-id="1293942" data-ref="15406201-I2013" class="draggableAssociated sbdraggable" alt="ANKLE STRAP SANDAL                                                                                                              " src="//static.zara.net/photos//2013/I/1/1/p/5406/201/040/2/5406201040_3_1_5.jpg?timestamp=1369669426586">
                                </a>
                            </li>

                        </ul>

                    </div>

                       
                </nav>	

                <div class="bigImageContainer">

                    <?php if ($thumb || $images) { ?>
                        <div class="image-wrap mainImage imageZoom">
                            <?php if ($thumb) { ?>
                                <img src="<?php echo $popup; ?>" data-name="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="image-big gaViewEvent sbdraggable draggableMain" id="" >
                            <?php } ?>

                            <?php if ($images) { ?>
                                <div class="image-additional">
                                    <?php foreach ($images as $image) { ?>
                                        <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="image-big gaViewEvent sbdraggable draggableMain" id=""/>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                        </div>
                    <?php } ?>


                </div>

            </div>


            <div id="productRightMenu-1344505" class="right " style="position: absolute;">

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

                <br/>
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
                        <h2><?php echo $text_option; ?></h2>
                        <br />
                        <?php foreach ($options as $option) { ?>
                            <?php if ($option['type'] == 'select') { ?>
                                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                    <?php if ($option['required']) { ?>
                                        <span class="required">*</span>
                                    <?php } ?>
                                    <b><?php echo $option['name']; ?>:</b><br />
                                    <select name="option[<?php echo $option['product_option_id']; ?>]">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($option['option_value'] as $option_value) { ?>
                                            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php } ?>
                                            </option>
                                        <?php } ?>
                                    </select>
                                </div>
                                <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'radio') { ?>
                                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                    <?php if ($option['required']) { ?>
                                        <span class="required">*</span>
                                    <?php } ?>
                                    <b><?php echo $option['name']; ?>:</b><br />
                                    <?php foreach ($option['option_value'] as $option_value) { ?>
                                        <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
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
                                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                    <?php if ($option['required']) { ?>
                                        <span class="required">*</span>
                                    <?php } ?>
                                    <b><?php echo $option['name']; ?>:</b><br />
                                    <table class="option-image">
                                        <?php foreach ($option['option_value'] as $option_value) { ?>
                                            <tr>
                                                <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                                                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                                                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                        <?php if ($option_value['price']) { ?>
                                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                        <?php } ?>
                                                    </label></td>
                                            </tr>
                                        <?php } ?>
                                    </table>
                                </div>
                                <br />
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
                        <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
                        <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
                        &nbsp;
                        <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
                    </div>
                    <?php if ($minimum > 1) { ?>
                        <div class="minimum"><?php echo $text_minimum; ?></div>
                    <?php } ?>
                </div>
                <form action="http://www.zara.com/webapp/wcs/stores/servlet/AjaxOrderChangeServiceItemAdd?catalogId=24056&amp;categoryId=salesCategoryId&amp;langId=-1&amp;storeId=11719" name="itemAdd" id="itemAddId-1344505" class="itemAddId ignoreValidation" method="post">



                    <input type="hidden" value="1344602" name="catEntryId" class="f_itemId" id="f_itemId">	


                    <input type="hidden" value="1" name="quantity">										
                    <input type="hidden" value="." name="orderId">
                    <input type="hidden" value="orderId" name="outOrderName">
                    <input type="hidden" value="1" name="calculateOrder">
                    <input type="hidden" value="358002" name="currentCategoryId">
                    <input type="hidden" value="SELECT SIZE" id="sizeMessage" name="sizeMessage">


                    <input type="hidden" value="-1" name="langId">
                    <input type="hidden" value="11719" name="storeId">

                    <h2 class="seoInfo">1. Choose a colour</h2>


                    <div class="colors" id="colors-1344505" style="visibility: visible; opacity: 1;">

                        <label data-colorcode="500" data-ga-props="{action:'Seleccionar_Producto', opt_label:'Cambiar_Color'}" class="colorEl auxImageLi selected gaViewEvent gaTrack">
                            <a title="Green" href="#content">

                                <img class="checked" src="//static.zara.net/photos//2013/I/0/1/p/7474/046/500/2/7474046500_3_1_5.jpg?timestamp=1370447908350">
                                <span>Green</span>


                            </a>
                        </label>	

                    </div>


                    <h2 class="seoInfo">2. Choose a size</h2>

                    <div id="size-btn" class="size-btn" style="visibility: visible; opacity: 1;">
                        <span class="selected-size">SELECT SIZE </span>
                        <div class="size-select" style="display: none;">
                            <table>

                                <tbody><tr data-ga-props="{action:'Escoger_Talla'}" data-catentryid="1344602" id="selecsize_2" class="product-size gaTrack gaViewEvent">

                                        <td class="size-name">																			   	   				   		
                                            S
                                        </td>																								
                                        <td class="suscribe">

                                            &nbsp;

                                        </td>
                                    </tr>

                                    <tr data-ga-props="{action:'Escoger_Talla'}" data-catentryid="1344603" id="selecsize_3" class="product-size gaTrack gaViewEvent">

                                        <td class="size-name">																			   	   				   		
                                            M
                                        </td>																								
                                        <td class="suscribe">

                                            &nbsp;

                                        </td>
                                    </tr>

                                    <tr data-ga-props="{action:'Escoger_Talla'}" data-catentryid="1344604" id="selecsize_4" class="product-size gaTrack gaViewEvent">

                                        <td class="size-name">																			   	   				   		
                                            L
                                        </td>																								
                                        <td class="suscribe">

                                            &nbsp;

                                        </td>
                                    </tr>

                                    <tr data-ga-props="{action:'Escoger_Talla'}" data-catentryid="1344601" id="selecsize_5" class="product-size gaTrack gaViewEvent">

                                        <td class="size-name">																			   	   				   		
                                            XL
                                        </td>																								
                                        <td class="suscribe">

                                            &nbsp;

                                        </td>
                                    </tr>

                                </tbody></table>

                            <button data-ga-props="{action:'Seleccionar_Talla', opt_label:'Guia_de_tallas'}" data-href="http://www.zara.com/webapp/wcs/stores/servlet/ProductGuideSizeAjaxView?catalogId=24056&amp;categoryId=358002&amp;langId=-1&amp;productId=1344505&amp;storeId=11719" class="size-guide gaViewEvent gaTrack">Size guide</button>
                        </div>

                    </div>


                    <h2 class="seoInfo"><label for="size">3. Put it in your basket</label></h2>
                    <div class="cart-actions" id="cart-actions-1344505" style="visibility: visible; opacity: 1;">

                        <button data-ga-props="{action:'Anadir_a_la_Cesta'}" class="button butBlack butAddCart gaViewEvent" value="Add to cart" type="button" id="button_submit-1344505"><span>Add to basket</span></button>
                        <a data-ga-props="{action:'Tramitar_Pedido'}" class="button process-order-btn gaTrack gaViewEvent buyButton" href="https://www.zara.com/webapp/wcs/stores/servlet/ShopCartPage?calculationUsageId=-1&amp;updatePrices=1&amp;catalogId=24056&amp;orderId=.&amp;langId=-1&amp;storeId=11719&amp;URL=ShopCartPage" id="buyButton-1344505"><span>Process order</span></a>								

                    </div>

                </form>

                <div class="line boxPromoWrap" id="message">
                    <!-- Start - JSP File Name:  ItxProductMarketingSpot.jsp --><!-- Please - Do not remove this comment.  --><p>FREE SHIPPING &amp; RETURNS</p><!-- End - JSP File Name:  ItxProductMarketingSpot.jsp -->
                </div>	

                <div id="clickToCall" style="visibility: visible; opacity: 1;">

                </div>


            </div>
        </section>
    </section>

    <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
    $(document).ready(function() {
        $('.colorbox').colorbox({
            overlayClose: true,
            opacity: 0.5,
            rel: "colorbox"
        });
    });
    //--></script> 
<script type="text/javascript"><!--
    $('#button-cart').bind('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
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

        $('.date').datepicker({dateFormat: 'yy-mm-dd'});
        $('.datetime').datetimepicker({
            dateFormat: 'yy-mm-dd',
            timeFormat: 'h:m'
        });
        $('.time').timepicker({timeFormat: 'h:m'});
    });
    //--></script> 
<?php echo $footer; ?>