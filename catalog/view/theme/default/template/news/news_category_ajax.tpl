<?php if ($news) { ?>
    <?php foreach ($news as $news_item) { ?>
            <div class="news">
                <div class="thumb" style="float: left; width: 220px;">
                    <div class="border"> 
                        <a href="<?php echo $news_item['href']; ?>">
                            <img width="220" height="153" src="<?php echo $news_item['thumb']; ?>" title="<?php echo $news_item['name']; ?>" alt="<?php echo $news_item['name']; ?>">
                        </a> </div>
                    <div class="tl corner"></div>
                    <div class="br corner"></div>
                </div>
                <!--.thumb-->
                <div class="info fr" style="width: 505px; height: 180px; float: right">
                    <h2><a href="<?php echo $news_item['href']; ?>" style="font-size: 18px; font-weight: bold; color: #333; text-transform: none;">
                        <?php echo $news_item['name']; ?></a>
                    </h2>
                    <p class="meta">Ngày đăng: <span class="date"><?php echo date('d/m/Y', strtotime($news_item['date_available'])) ?></span></p>
                    <p style="" class="excerpt">                             
                        <?php echo utf8_substr($news_item['short_description'], 0, 300); ?>&nbsp;&nbsp;<a style="color: #0274be; font-size: 11px; font-weight: bold;" href="<?php echo $news_item['href']; ?>">Xem chi tiết...</a>
                    </p>
                </div>
                <div class="clear"></div>
                <div style="border-top: 1px solid #DFDFDF; height: 1px; margin-bottom: 20px;"></div>
                <!--.info-->
                <!--.more--> 
            </div>
            <!--.news-->
    <?php } ?>
<?php } ?>