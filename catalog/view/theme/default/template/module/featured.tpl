<section id="products" style="padding-top: 20px;">
    <div id="banner">
        <h3><?php echo $text_description ?></h3>
    </div>

    <?php if ($products) { ?>
        <ul id="product-info" class="product-grid">
            <?php foreach ($products as $product) { ?>
                <li class="product pageDelim">

                    <?php if ($product['thumb']) { ?>
                        <a class="item gaProductDetailsLink" href="<?php echo $product['href']; ?>"><img rel="<?php echo $product['thumb_small']; ?>" class="image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                    <?php } ?>

                    <div class="product-info">

                        <?php $nextWeek = time() + (7 * 24 * 60 * 60); ?>

                        <?php if (strtotime($product['date_added']) < $nextWeek) { ?>
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
    <?php } ?>
    <div class="clear">

    </div>
</section>


<section id="sidebar" style="top: 100px;">
    <div id="sidebar-content">
        <div class="options">
            <ul>
                <li><span>VIEW OPTIONS:</span>
                    <ul class="view-options">
                        <li><a  href="javascript:display('list')" id="ds_grid" class="six gaTrack gaViewEvent">2</a></li>
                        <li><a  href="javascript:display('grid')" id="ds_list" class="two selected gaTrack gaViewEvent">6</a></li>
                    </ul>
                </li>

            </ul>
        </div>

    </div>
</section>

<script>
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