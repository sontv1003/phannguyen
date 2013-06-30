<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<div class="main">
    <div class="head">
    </div>
    <input type="hidden" name="lh_page" id="lh_page" value="2"/>
    <div id="pageLoading"></div>
    <section id="main" class="content-main">
        <h2 class="offleft"><?php echo $heading_title; ?></h2>
        <section id="products">
            
            <?php if ($products) { ?>
                <ul id="product-info" class="product-grid">
                    <?php foreach ($products as $product) { ?>
                        <li class="product pageDelim">

                            <?php if ($product['thumb']) { ?>
                                <a class="item gaProductDetailsLink" href="<?php echo $product['href']; ?>"><img rel="<?php echo $product['thumb_small']; ?>" class="image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                            <?php } ?>

                            <div class="product-info">

                                <?php $nextWeek = time() + (7 * 24 * 60 * 60); ?>

                                <?php if (strtotime($product['date']) < $nextWeek) { ?>
                                    <div class="labelProd">
                                        <span class="label-new">New</span>
                                    </div>	
                                <?php } ?>

                                <a class="name item" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>

                                <?php if ($product['price']) { ?>
                                    <div class="price">
                                        <?php if (!$product['special']) { ?>
                                            <?php echo $product['price']; ?>
                                        <?php } else { ?>
                                            <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                                        <?php } ?>
                                    </div>
                                <?php } ?>

                            </div>
                        </li>
                    <?php } ?>
                </ul>
                <div class="clear"></div>
            </section>

            <section id="sidebar" >
                <div id="sidebar-content">
                    <div class="options">
                        <ul>
                            <li><span>VIEW OPTIONS:</span>
                                <ul class="view-options">
                                    <li><a  href="javascript:display('list')" id="ds_grid" class="six gaTrack gaViewEvent">2</a></li>
                                    <li><a  href="javascript:display('grid')" id="ds_list" class="two selected gaTrack gaViewEvent">6</a></li>
                                </ul>
                            </li>
                            <li class="products-total">
                                <span class="js-count"><?php echo $product_total ?></span><span>&nbsp;<?php echo $text_product ?></span>
                            </li>
                        </ul>
                    </div>

                    <div data-ga-props="{action:'Abrir_filtros', opt_label:'Abrir_filtros'}" class="gaTrack gaViewEvent" id="filter-btn">
                        <button class="filter no-filter-on">FILTER</button>
                    </div>
                </div>
            </section>
        <?php } ?>

        <?php if (!$products) { ?>
            <div class="content"><?php echo $text_empty; ?></div>
            <div class="buttons">
                <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
            </div>
        <?php } ?>
    </section>

    <div id="modal-opion" class="modal hide fade">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>

        <div class="modal-body">
            <div class="content"><div id="filters">						
                    <form id="filters-form"> 
                        <?php foreach ($options as $option) { ?>
                            <fieldset class="filter" id="features"> 
                                <h4><?php echo $option['name'] ?></h4>  
                                <?php if (!empty($option['values'])) { ?>
                                    <?php foreach ($option['values'] as $value) { ?>
                                        <input type="checkbox" id="checkbox<?php echo $value['id'] ?>" value="<?php echo $value['id'] ?>" name="option[<?php echo $value['id'] ?>]">
                                        <label for="checkbox<?php echo $value['id'] ?>">
                                            <?php echo $value['name'] ?>
                                        </label> 
                                    <?php } ?>
                                <?php } ?>
                            </fieldset>
                        <?php } ?>
                    </form>
                </div>
            </div>
        </div>
        <div class="popup-footer">
            <div class="footer-content" style="width: 583px; margin-left: 73px;">
                <div class="footer-form">
                    <input type="button" value="OK" id="submit_filter" class="_submitFilters gaTrack gaViewEvent">
                </div>
            </div>
        </div>
    </div>

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
    
    $(document).ready(function(){
        
        $('#filter-btn').live('click',function(){
            $('#modal-opion').modal();
        })
        
       
        
        $('#submit_filter').live('click',function(){
            var lh_page = jQuery("#lh_page").val();
            $.ajax({
                url: '<?php echo html_entity_decode($ajax_href) ?>&page=1',
                type: 'post',
                data:$('form#filters-form').serialize(),
                beforeSend: function(){
                    $('#pageLoading').show();
                    $('#pageLoading').css('right',50);
                    $('#pageLoading').css('top',50);
                    $("#lh_page").val(1);
                },
                success: function(data) {
                    $('#pageLoading').hide();
                    $('#modal-opion').modal('hide');
                    $('#product-info').html(data);
                    if($.trim(data).length > 0){
                        lh_page++;
                        jQuery("#lh_page").val(lh_page);
                    }else{
                        $('.js-count').html('0')
                    }
                    jQuery("#lh_page").val(0);
                }
            });
        })
    })
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
    //--></script> 


<?php echo $footer; ?>
