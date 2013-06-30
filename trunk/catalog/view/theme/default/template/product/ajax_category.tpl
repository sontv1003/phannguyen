<?php if ($products) { ?>
    <?php foreach ($products as $product) { ?>
        <li data-cattype="P" id="productId_1296552" class="product pageDelim">

            <?php if ($product['thumb']) { ?>
                <a class="item gaProductDetailsLink" href="<?php echo $product['href']; ?>"><img rel="<?php echo $product['thumb_small']; ?>" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
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
    <script>
        $('.js-count').html('<?php echo $product_total ?>')
    </script>
<?php } ?>


