<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="main">
    <div class="head">
    </div>
    <section id="main" class="content-main">
        <h2 class="offleft"><?php echo $heading_title; ?></h2>
        <section id="products">
            <div id="banner">
                <h3>FREE SHIPPING AND FREE RETURNS</h3>
                <p>On all standard orders</p>
            </div>
            <div id="msgFathersDay" class="msgFathersDay">
                <?php echo $description; ?>
            </div>
            <?php if ($products) { ?>
                <ul id="product-list">
                    <?php foreach ($products as $product) { ?>
                        <li data-cattype="P" id="productId_1296552" class="product pageDelim">


                            <?php if ($product['thumb']) { ?>
                                <a class="item gaProductDetailsLink" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                            <?php } ?>

                            <div class="product-info" style="visibility: visible; opacity: 1;">

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
            </section>

            <section id="sidebar" style="position: absolute;" class="">
                <div id="sidebar-content">
                    <div class="options">
                        <ul>
                            <li><span>VIEW OPTIONS:</span>
                                <ul class="view-options">
                                    <li><a data-ga-props="{action:'Cambio_vista', opt_label:'Mostrar_2'}" href="?rows=2" class="two selected gaTrack gaViewEvent">2</a></li>
                                    <li><a data-ga-props="{action:'Cambio_vista', opt_label:'Mostrar_6'}" href="?rows=6" class="six gaTrack gaViewEvent">6</a></li>
                                </ul>
                            </li>
                            <li class="products-total">
                                <span class="js-count">171</span><span>&nbsp;products</span>
                            </li>
                        </ul>
                    </div>

                    <div data-ga-props="{action:'Abrir_filtros', opt_label:'Abrir_filtros'}" class="gaTrack gaViewEvent" id="filter-btn">
                        <button class="filter no-filter-on">FILTER</button>
                    </div>
                </div>
            </section>
        <?php } ?>

        <?php if (!$categories && !$products) { ?>
            <div class="content"><?php echo $text_empty; ?></div>
            <div class="buttons">
                <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
            </div>
        <?php } ?>
    </section>



    <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
    function display(view) {
        if (view == 'list') {
            $('.product-grid').attr('class', 'product-list');
		
            $('.product-list > div').each(function(index, element) {
                html  = '<div class="right">';
                html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
                html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
                html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
                html += '</div>';			
			
                html += '<div class="left">';
			
                var image = $(element).find('.image').html();
			
                if (image != null) { 
                    html += '<div class="image">' + image + '</div>';
                }
			
                var price = $(element).find('.price').html();
			
                if (price != null) {
                    html += '<div class="price">' + price  + '</div>';
                }
					
                html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
                html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
                var rating = $(element).find('.rating').html();
			
                if (rating != null) {
                    html += '<div class="rating">' + rating + '</div>';
                }
				
                html += '</div>';
						
                $(element).html(html);
            });		
		
            $('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
            $.totalStorage('display', 'list'); 
        } else {
            $('.product-list').attr('class', 'product-grid');
		
            $('.product-grid > div').each(function(index, element) {
                html = '';
			
                var image = $(element).find('.image').html();
			
                if (image != null) {
                    html += '<div class="image">' + image + '</div>';
                }
			
                html += '<div class="name">' + $(element).find('.name').html() + '</div>';
                html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
                var price = $(element).find('.price').html();
			
                if (price != null) {
                    html += '<div class="price">' + price  + '</div>';
                }
			
                var rating = $(element).find('.rating').html();
			
                if (rating != null) {
                    html += '<div class="rating">' + rating + '</div>';
                }
						
                html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
                html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
                html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
                $(element).html(html);
            });	
					
            $('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
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