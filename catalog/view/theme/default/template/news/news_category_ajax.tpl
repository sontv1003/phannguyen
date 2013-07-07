<?php if ($news) { ?>
    <?php foreach ($news as $news_item) { ?>

        <div class="look" style="width: 599px;">
            <?php if ($news_item['thumb']) { ?>
                <img src="<?php echo $news_item['thumb']; ?>" class="image">
            <?php } ?>

            <div class="details" style="height: 101px;">
                <div class="detail">
                    <a href="<?php echo $news_item['href']; ?>" class="_product-link"><?php echo $news_item['name']; ?></a>
                </div>
            </div>
        </div>
    <?php } ?>
<?php } ?>