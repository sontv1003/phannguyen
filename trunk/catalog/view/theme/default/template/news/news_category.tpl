<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<div class="main">
    <div class="head">
    </div>
</div>

<div id="pageLoading"></div>

<section class="content-main body" id="main" style="padding-top: 21px;">
    <div class="head">
    </div>
    <input type="hidden" name="lh_page" id="lh_page" value="2"/>
    <div id="news-info">
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
    </div>

</section>
<?php echo $footer; ?>
<script>
    $(window).scroll(function() {
        if ($(window).scrollTop() == $(document).height() - $(window).height()) {
            var lh_page = $("#lh_page").val();
            if (lh_page >= 2) {
                ajaxHomepageGetMore();
            }
        }
    });

    function ajaxHomepageGetMore() {
        var lh_page = jQuery("#lh_page").val();
        $.ajax({
            url: '<?php echo html_entity_decode($ajax_href) ?>&page=' + lh_page,
            type: 'post',
            data: $('form#filters-form').serialize(),
            beforeSend: function() {
                $('#pageLoading').show();
                $('#pageLoading').css('right', $(window).width() / 2);
                jQuery("#lh_page").val(1);
            },
            success: function(data) {
                $('#pageLoading').hide();
                if ($.trim(data).length > 0) {
                    lh_page++;
                    jQuery("#lh_page").val(lh_page);
                    $('#news-info').append(data);
                }
            }
        });



    }
</script>
