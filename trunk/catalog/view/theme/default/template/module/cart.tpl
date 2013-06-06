<div id="cart">
    <a class="shoppingCartBar smallShopBagHead" id="shoppingCartBar" tabindex="0" href="https://www.zara.com/webapp/wcs/stores/servlet/ShopCartPage?calculationUsageId=-1&amp;updatePrices=1&amp;catalogId=24056&amp;orderId=.&amp;langId=-1&amp;storeId=11719&amp;URL=ShopCartPage">			 
        <?php echo $heading_title; ?> - <span id="miniShopCartItems"><?php echo $text_items; ?></span>
    </a>
    <div class="smallShopBagWrap" >
        <div id="smallShopBagId" class="smallShopBag">
            <div class="lt ieSh"> </div>
            <div class="lb ieSh"> </div>
            <div class="rb ieSh"> </div>
            <div class="rt ieSh"></div>
            <div class="smallShopBagCont">
                <ul>
                    <?php if ($products || $vouchers) { ?>
                        <?php foreach ($products as $product) { ?>

                            <li>
                                <?php if ($product['thumb']) { ?>
                                    <span class="imageProd">
                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                                    </span>	
                                <?php } ?>

                                <span class="descProd">
                                    <a href="<?php echo $product['href']; ?>" >
                                        <?php echo $product['name']; ?>
                                    </a>
                                    <div>
                                        <?php foreach ($product['option'] as $option) { ?>
                                            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
                                        <?php } ?>
                                    </div>
                                    <div class="quantity">
                                        x&nbsp;<?php echo $product['quantity']; ?>
                                    </div>

                                    <span class="price">
                                        <?php echo $product['total']; ?>
                                    </span>
                                </span>																																																														
                            </li>
                        <?php } ?>
                    <?php } ?>
                </ul>
                <div class="linkShopBag">
                    <div class="actions">
                        <a  class="viewShopCartBt button butSmallBlack gaTrack gaViewEvent" href="<?php echo $cart; ?>"><span><?php echo $text_cart; ?></span></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>