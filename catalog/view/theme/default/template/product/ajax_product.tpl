<div class="popup-content" >
    <div class="content"><div>
            <div id="popup-success">
                
            </div>
            <!--main-->
            <div class="product-card psection_2 ptype_0 pcatentry_1047963 pversion_v1 gaTrack gaPanel gaSon" id="popup-product">

                <div class="left" style="height: 617px;">
                    <div class="bigImageContainer">
                        <div class="image-wrap mainImage imageZoom">
                            <?php if ($thumb) { ?>
                                <img src="<?php echo $popup; ?>" data-name="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" >
                            <?php } ?>

                        </div>
                    </div>

                </div>
                <form id="ajax-product">

                <div class="productRightMenu" class="">

                    <header>
                        <h1>
                            <a href="<?php echo $product_href; ?>"><?php echo $heading_title; ?></a>
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
                                                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="optionajax-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                                                <label for="optionajax-value-<?php echo $option_value['product_option_value_id']; ?>">
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
                                    <div id="optionajax-<?php echo $option['product_option_id']; ?>" class="option">
                                        <div class="size-btn" style="visibility: visible; opacity: 1;">
                                            <span class="selected-size"><span class="required">*</span> <?php echo $option['name']; ?> </span>
                                            <div class="size-select" style="display: none;">
                                                <table>
                                                    <tbody>
                                                        <?php foreach ($option['option_value'] as $option_value) { ?>
                                                            <tr class="product-size gaTrack gaViewEvent">
                                                                <td class="size-name">
                                                                    <input rel="<?php echo $option_value['name']; ?>" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="optionajax-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                                                    <label for="optionajax-value-<?php echo $option_value['product_option_value_id']; ?>">
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
                                    <div id="optionajax-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <?php foreach ($option['option_value'] as $option_value) { ?>
                                            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="optionajax-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                            <label for="optionajax-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
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
                                            <label for="optionajax-value-<?php echo $option_value['product_option_value_id']; ?>" >
                                                <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name']; ?>" />
                                                <span><?php echo $option_value['name']; ?></span>
                                            </label>
                                            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="optionajax-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                        <?php } ?>
                                    </div>

                                <?php } ?>
                                <?php if ($option['type'] == 'text') { ?>
                                    <div id="optionajax-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'textarea') { ?>
                                    <div id="optionajax-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'file') { ?>
                                    <div id="optionajax-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="button" value="<?php echo $button_upload; ?>" id="button-optionajax-<?php echo $option['product_option_id']; ?>" class="button">
                                        <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'date') { ?>
                                    <div id="optionajax-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'datetime') { ?>
                                    <div id="optionajax-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                            <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
                                    </div>
                                    <br />
                                <?php } ?>
                                <?php if ($option['type'] == 'time') { ?>
                                    <div id="optionajax-<?php echo $option['product_option_id']; ?>" class="option">
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
                            <input type="button" value="<?php echo $button_cart; ?>" id="button-cart-ajax" class="button" />
                        </div>
                        <?php if ($minimum > 1) { ?>
                            <div class="minimum"><?php echo $text_minimum; ?></div>
                        <?php } ?>
                    </div>

                </div>
                </form>
            </div>
   
        </div>
        <!-- End - JSP File Name:  ItxCatentryPopupDisplayView.jsp --></div></div>
</div>
