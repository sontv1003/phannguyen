
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<div class="main">
    <div class="head">
    </div>
    <input type="hidden" name="lh_page" id="lh_page" value="2"/>
    <div id="pageLoading"></div>
    <section id="main" class="content-main">
        <h2 class="offleft"><?php echo $heading_title; ?></h2>
        <section id="products">
            <div class="product-search">
                <?php echo $entry_search; ?>
                <?php if ($search) { ?>
                    <input type="text" class="inputText" name="search" value="<?php echo $search; ?>" />
                <?php } else { ?>
                    <input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
                <?php } ?>
                <select name="category_id">
                    <option value="0"><?php echo $text_category; ?></option>
                    <?php foreach ($categories as $category_1) { ?>
                        <?php if ($category_1['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                        <?php } else { ?>
                            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                        <?php } ?>
                        <?php foreach ($category_1['children'] as $category_2) { ?>
                            <?php if ($category_2['category_id'] == $category_id) { ?>
                                <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } else { ?>
                                <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_2['children'] as $category_3) { ?>
                                <?php if ($category_3['category_id'] == $category_id) { ?>
                                    <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                                <?php } else { ?>
                                    <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                                <?php } ?>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                </select>
                <?php if ($sub_category) { ?>
                    <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
                <?php } else { ?>
                    <input type="checkbox" name="sub_category" value="1" id="sub_category" />
                <?php } ?>
                <label for="sub_category"><?php echo $text_sub_category; ?></label>

                <?php if ($description) { ?>
                    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                <?php } else { ?>
                    <input type="checkbox" name="description" value="1" id="description" />
                <?php } ?>
                <label for="description"><?php echo $entry_description; ?></label>

                <div class="buttons">
                    <div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
                </div>
                <h2><?php echo $text_search; ?></h2> 
            </div>
            <div id="banner">
                <h3>FREE SHIPPING AND FREE RETURNS</h3>
                <p>On all standard orders</p>
            </div>
            <div id="msgFathersDay" class="msgFathersDay">
                <?php echo $description; ?>
            </div>
            <?php if ($products) { ?>
                <div class="product-filter">
                    <div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>
                    <div class="limit"><?php echo $text_limit; ?>
                        <select onchange="location = this.value;">
                            <?php foreach ($limits as $limits) { ?>
                                <?php if ($limits['value'] == $limit) { ?>
                                    <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                                <?php } else { ?>
                                    <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                                <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="sort"><?php echo $text_sort; ?>
                        <select onchange="location = this.value;">
                            <?php foreach ($sorts as $sorts) { ?>
                                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                <?php } else { ?>
                                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
                <div class="product-list">
                    <?php foreach ($products as $product) { ?>
                        <div>
                            <?php if ($product['thumb']) { ?>
                                <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                            <?php } ?>
                            <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                            <div class="description"><?php echo $product['description']; ?></div>
                            <?php if ($product['price']) { ?>
                                <div class="price">
                                    <?php if (!$product['special']) { ?>
                                        <?php echo $product['price']; ?>
                                    <?php } else { ?>
                                        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                                    <?php } ?>
                                    <?php if ($product['tax']) { ?>
                                        <br />
                                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                            <?php if ($product['rating']) { ?>
                                <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                            <?php } ?>
                            <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
                            <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
                            <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
                        </div>
                    <?php } ?>
                </div>
                <div class="pagination"><?php echo $pagination; ?></div>
            <?php } ?>


            <?php if (!$categories && !$products) { ?>
                <div class="content"><?php echo $text_empty; ?></div>
            <?php } ?>
        </section>

    <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
    
    $(window).scroll(function(){		
        if ($(window).scrollTop() == $(document).height() - $(window).height()){	
            var lh_page = $("#lh_page").val();
            if(lh_page >= 2){
                ajaxHomepageGetMore();					
            }	
            var html = $('#product-info').html();
            
        }
    });	
    
    function ajaxHomepageGetMore(){
        var lh_page = jQuery("#lh_page").val();
        $.ajax({
            url: '<?php echo html_entity_decode($ajax_href) ?>&page='+lh_page,
            type: 'post',
            data:$('form#filters-form').serialize(),
            beforeSend: function(){
                $('#pageLoading').show();
                $('#pageLoading').css('right',$(window).width()/2);
                jQuery("#lh_page").val(1);
            },
            success: function(data) {
                $('#pageLoading').hide();
                if($.trim(data).length > 0){
                    lh_page++;
                    jQuery("#lh_page").val(lh_page);
                    $('#product-info').append(data);
                }
            }
        });
        
        
        
    }
    
    $('#filters-form label').live('click',function(){
        if($(this).hasClass('selected')){
            $(this).removeClass('selected');
        }else{
            $(this).addClass('selected')
        }
            
            
    });
    
    
    function display(view) {
        console.debug(view);
        if (view == 'list') {
            $('.product-grid').attr('class', 'product-list');
	    	
            $('#ds_list').removeClass('selected')	
            $('#ds_grid').addClass('selected')
		
            $.totalStorage('display', 'list'); 
        } else {
            $('.product-list').attr('class', 'product-grid');
            $('#ds_list').addClass('selected')	
            $('#ds_grid').removeClass('selected')
            
		
            $.totalStorage('display', 'grid');
        }
    }

    view = $.totalStorage('display');

    if (view) {
        display(view);
    } else {
        display('list');
    }
    
    $('#content input[name=\'search\']').keydown(function(e) {
        if (e.keyCode == 13) {
            $('#button-search').trigger('click');
        }
    });

    $('select[name=\'category_id\']').bind('change', function() {
        if (this.value == '0') {
            $('input[name=\'sub_category\']').attr('disabled', 'disabled');
            $('input[name=\'sub_category\']').removeAttr('checked');
        } else {
            $('input[name=\'sub_category\']').removeAttr('disabled');
        }
    });

    $('select[name=\'category_id\']').trigger('change');

    $('#button-search').bind('click', function() {
        url = 'index.php?route=product/search';
	
        var search = $('#content input[name=\'search\']').attr('value');
	
        if (search) {
            url += '&search=' + encodeURIComponent(search);
        }

        var category_id = $('#content select[name=\'category_id\']').attr('value');
	
        if (category_id > 0) {
            url += '&category_id=' + encodeURIComponent(category_id);
        }
	
        var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
        if (sub_category) {
            url += '&sub_category=true';
        }
		
        var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
        if (filter_description) {
            url += '&description=true';
        }

        location = url;
    });
    //--></script> 


<?php echo $footer; ?>